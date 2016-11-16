/****************************************************************************
 * Copyright (C) 2009-2010 GGA Software Services LLC
 *
 * This file may be distributed and/or modified under the terms of the
 * GNU Affero General Public License version 3 as published by the Free
 * Software Foundation and appearing in the file LICENSE.GPL included in
 * the packaging of this file.
 *
 * This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
 * WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOS  E.
 ***************************************************************************/
// rnd.ReStruct constructor and utilities are defined here
//
// ReStruct is to store all the auxiliary information for
//  chem.Struct while rendering
if(!window.chem||!util.Vec2||!chem.Struct||!window.rnd||!rnd.Visel)throw new Error("Vec2, Molecule and Visel should be defined first");window.rnd||(rnd={}),rnd.ReObject=function(){this.__ext=new util.Vec2(.05*3,.05*3)},rnd.ReObject.prototype.init=function(e){this.visel=new rnd.Visel(e),this.highlight=!1,this.highlighting=null,this.selected=!1,this.selectionPlate=null},rnd.ReObject.prototype.calcVBox=function(e){if(this.visel.boundingBox)return this.visel.boundingBox.transform(e.scaled2obj,e)},rnd.ReObject.prototype.drawHighlight=function(e){console.log("ReObject.drawHighlight is not overridden")},rnd.ReObject.prototype.setHighlight=function(e,t){if(e){var n=this.highlighting&&!this.highlighting.removed;n=n&&(!("hiddenPaths"in rnd.ReStruct.prototype)||rnd.ReStruct.prototype.hiddenPaths.indexOf(this.highlighting)<0),n?this.highlighting.show():this.highlighting=this.drawHighlight(t)}else this.highlighting&&this.highlighting.hide();this.highlight=e},rnd.ReObject.prototype.makeSelectionPlate=function(e){console.log("ReObject.makeSelectionPlate is not overridden")},rnd.ReAtom=function(e){this.init(rnd.Visel.TYPE.ATOM),this.a=e,this.showLabel=!1,this.hydrogenOnTheLeft=!1,this.sGroupHighlight=!1,this.sGroupHighlighting=null,this.component=-1},rnd.ReAtom.prototype=new rnd.ReObject,rnd.ReAtom.prototype.drawHighlight=function(e){var t=e.ps(this.a.pp),n=e.paper.circle(t.x,t.y,e.styles.atomSelectionPlateRadius).attr(e.styles.highlightStyle);return e.addItemPath(this.visel,"highlighting",n),n},rnd.ReAtom.prototype.makeSelectionPlate=function(e,t,n){var r=e.render.ps(this.a.pp);return t.circle(r.x,r.y,n.atomSelectionPlateRadius).attr(n.selectionStyle)},rnd.ReBond=function(e){this.init(rnd.Visel.TYPE.BOND),this.b=e,this.doubleBondShift=0},rnd.ReBond.prototype=new rnd.ReObject,rnd.ReBond.prototype.drawHighlight=function(e){e.ctab.bondRecalc(e.settings,this);var t=e.paper.ellipse(this.b.center.x,this.b.center.y,this.b.sa,this.b.sb).rotate(this.b.angle).attr(e.styles.highlightStyle);return e.addItemPath(this.visel,"highlighting",t),t},rnd.ReBond.prototype.makeSelectionPlate=function(e,t,n){return e.bondRecalc(e.render.settings,this),t.ellipse(this.b.center.x,this.b.center.y,this.b.sa,this.b.sb).rotate(this.b.angle).attr(n.selectionStyle)},rnd.ReStruct=function(e,t,n){this.render=t,this.atoms=new util.Map,this.bonds=new util.Map,this.reloops=new util.Map,this.rxnPluses=new util.Map,this.rxnArrows=new util.Map,this.frags=new util.Map,this.rgroups=new util.Map,this.sgroups=new util.Map,this.sgroupData=new util.Map,this.chiralFlags=new util.Map,this.molecule=e||new chem.Struct,this.initialized=!1,this.layers=[],this.initLayers(),this.connectedComponents=new util.Pool,this.ccFragmentType=new util.Map;for(var r in rnd.ReStruct.maps)this[r+"Changed"]={};this.structChanged=!1,e.atoms.each(function(e,t){this.atoms.set(e,new rnd.ReAtom(t))},this),e.bonds.each(function(e,t){this.bonds.set(e,new rnd.ReBond(t))},this),e.loops.each(function(e,t){this.reloops.set(e,new rnd.ReLoop(t))},this),e.rxnPluses.each(function(e,t){this.rxnPluses.set(e,new rnd.ReRxnPlus(t))},this),e.rxnArrows.each(function(e,t){this.rxnArrows.set(e,new rnd.ReRxnArrow(t))},this),e.frags.each(function(e,t){this.frags.set(e,new rnd.ReFrag(t))},this),e.rgroups.each(function(e,t){this.rgroups.set(e,new rnd.ReRGroup(t))},this),e.sgroups.each(function(e,t){this.sgroups.set(e,new rnd.ReSGroup(t)),t.type=="DAT"&&!t.data.attached&&this.sgroupData.set(e,new rnd.ReDataSGroupData(t))},this);if(e.isChiral){var i=e.getCoordBoundingBox();this.chiralFlags.set(0,new rnd.ReChiralFlag(new util.Vec2(i.max.x,i.min.y-1)))}this.coordProcess(n),this.tmpVisels=[]},rnd.ReStruct.maps={atoms:0,bonds:1,rxnPluses:2,rxnArrows:3,frags:4,rgroups:5,sgroupData:6,chiralFlags:7},rnd.ReStruct.prototype.connectedComponentRemoveAtom=function(e,t){t=t||this.atoms.get(e);if(t.component<0)return;var n=this.connectedComponents.get(t.component);util.Set.remove(n,e),util.Set.size(n)<1&&this.connectedComponents.remove(t.component),t.component=-1},rnd.ReStruct.prototype.printConnectedComponents=function(){var e=[];this.connectedComponents.each(function(t,n){e.push(" "+t+":["+util.Set.list(n).toString()+"]."+util.Set.size(n).toString())},this),console.log(e.toString())},rnd.ReStruct.prototype.clearConnectedComponents=function(){this.connectedComponents.clear(),this.atoms.each(function(e,t){t.component=-1})},rnd.ReStruct.prototype.getConnectedComponent=function(e,t){var n=typeof e["length"]=="number"?util.array(e):[e],r=util.Set.empty();while(n.length>0)(function(){var e=n.pop();util.Set.add(r,e);var i=this.atoms.get(e);i.component>=0&&util.Set.add(t,i.component);for(var s=0;s<i.a.neighbors.length;++s){var o=this.molecule.halfBonds.get(i.a.neighbors[s]).end;util.Set.contains(r,o)||n.push(o)}}).apply(this);return r},rnd.ReStruct.prototype.addConnectedComponent=function(e){var t=this.connectedComponents.add(e),n=util.Set.empty(),r=this.getConnectedComponent(util.Set.list(e),n);util.Set.remove(n,t);var i=-1;return util.Set.each(r,function(e){var n=this.atoms.get(e);n.component=t;if(n.a.rxnFragmentType!=-1){if(i!=-1&&n.a.rxnFragmentType!=i)throw new Error("reaction fragment type mismatch");i=n.a.rxnFragmentType}},this),this.ccFragmentType.set(t,i),t},rnd.ReStruct.prototype.removeConnectedComponent=function(e){return util.Set.each(this.connectedComponents.get(e),function(e){this.atoms.get(e).component=-1},this),this.connectedComponents.remove(e)},rnd.ReStruct.prototype.connectedComponentMergeIn=function(e,t){util.Set.each(t,function(t){this.atoms.get(t).component=e},this),util.Set.mergeIn(this.connectedComponents.get(e),t)},rnd.ReStruct.prototype.assignConnectedComponents=function(){this.atoms.each(function(e,t){if(t.component>=0)return;var n=util.Set.empty(),r=this.getConnectedComponent(e,n);util.Set.each(n,function(e){this.removeConnectedComponent(e)},this),this.addConnectedComponent(r)},this)},rnd.ReStruct.prototype.connectedComponentGetBoundingBox=function(e,t,n){return t=t||this.connectedComponents.get(e),n=n||{min:null,max:null},util.Set.each(t,function(e){var t=this.render.ps(this.atoms.get(e).a.pp);n.min==null?n.min=n.max=t:(n.min=n.min.min(t),n.max=n.max.max(t))},this),n},rnd.ReStruct.prototype.initLayers=function(){for(var e in rnd.ReStruct.layerMap)this.layers[rnd.ReStruct.layerMap[e]]=this.render.paper.rect(0,0,10,10).attr({fill:"#000",opacity:"0.0"}).toFront()},rnd.ReStruct.prototype.insertInLayer=function(e,t){t.insertBefore(this.layers[e])},rnd.ReStruct.prototype.clearMarks=function(){this.bondsChanged={},this.atomsChanged={},this.structChanged=!1},rnd.ReStruct.prototype.markItemRemoved=function(){this.structChanged=!0},rnd.ReStruct.prototype.markBond=function(e,t){this.markItem("bonds",e,t)},rnd.ReStruct.prototype.markAtom=function(e,t){this.markItem("atoms",e,t)},rnd.ReStruct.prototype.markItem=function(e,t,n){var r=this[e+"Changed"];r[t]=typeof r[t]!="undefined"?Math.max(n,r[t]):n,this[e].has(t)&&this.clearVisel(this[e].get(t).visel)},rnd.ReStruct.prototype.eachVisel=function(e,t){for(var n in rnd.ReStruct.maps)this[n].each(function(n,r){e.call(t,r.visel)},this);this.sgroups.each(function(n,r){e.call(t,r.visel)},this),this.reloops.each(function(n,r){e.call(t,r.visel)},this);for(var r=0;r<this.tmpVisels.length;++r)e.call(t,this.tmpVisels[r])},rnd.ReStruct.prototype.translate=function(e){this.eachVisel(function(t){this.translateVisel(t,e)},this)},rnd.ReStruct.prototype.scale=function(e){this.eachVisel(function(t){this.scaleVisel(t,e)},this)},rnd.ReStruct.prototype.translateVisel=function(e,t){var n;for(n=0;n<e.paths.length;++n)e.paths[n].translate(t.x,t.y);for(n=0;n<e.boxes.length;++n)e.boxes[n].translate(t);e.boundingBox!=null&&e.boundingBox.translate(t)},rnd.ReStruct.prototype.scaleRPath=function(e,t){if(e.type=="set")for(var n=0;n<e.length;++n)this.scaleRPath(e[n],t);else Object.isUndefined(e.attrs)||("font-size"in e.attrs?e.attr("font-size",e.attrs["font-size"]*t):"stroke-width"in e.attrs&&e.attr("stroke-width",e.attrs["stroke-width"]*t)),e.scale(t,t,0,0)},rnd.ReStruct.prototype.scaleVisel=function(e,t){for(var n=0;n<e.paths.length;++n)this.scaleRPath(e.paths[n],t)},rnd.ReStruct.prototype.clearVisels=function(){this.eachVisel(function(e){this.clearVisel(e)},this)},rnd.ReStruct.prototype.update=function(e){e=e||!this.initialized;var t;e?function(){for(var e in rnd.ReStruct.maps){var t=this[e+"Changed"];this[e].each(function(e){t[e]=1},this)}}.call(this):function(){for(var e in rnd.ReStruct.maps){var n=this[e+"Changed"];for(t in n)this[e].has(t)||delete n[t]}}.call(this);for(t in this.atomsChanged)this.connectedComponentRemoveAtom(t);var n=this.frags.findAll(function(e,t){return!t.calcBBox(this.render,e)},this);for(var r=0;r<n.length;++r){var i=n[r];this.clearVisel(this.frags.get(i).visel),this.frags.unset(i),this.molecule.frags.remove(i)}(function(){for(var e in rnd.ReStruct.maps){var n=this[e+"Changed"];for(t in n)this.clearVisel(this[e].get(t).visel),this.structChanged|=n[t]>0}}).call(this),this.sgroups.each(function(e,t){this.clearVisel(t.visel),t.highlighting=null,t.selectionPlate=null},this);for(var s=0;s<this.tmpVisels.length;++s)this.clearVisel(this.tmpVisels[s]);this.tmpVisels.clear(),this.frags.each(function(e,t){this.clearVisel(t.visel)},this),this.rgroups.each(function(e,t){this.clearVisel(t.visel)},this),e&&(this.clearConnectedComponents(),this.molecule.initHalfBonds(),this.molecule.initNeighbors()),this.updateHalfBonds(),this.sortNeighbors(),this.assignConnectedComponents(),this.setImplicitHydrogen(),this.setHydrogenPos(),this.initialized=!0,this.scaleCoordinates();var o=e||this.structChanged;return o&&this.updateLoops(),this.setDoubleBondShift(),this.checkLabelsToShow(),this.showLabels(),this.shiftBonds(),this.showBonds(),this.verifyLoops(),o&&this.renderLoops(),this.clearMarks(),this.drawReactionSymbols(),this.drawSGroups(),this.drawFragments(),this.drawRGroups(),this.chiralFlags.each(function(e,t){this.chiralFlagsChanged[e]>0&&t.draw(this.render)},this),!0},rnd.ReStruct.prototype.drawReactionSymbols=function(){var e,t;for(t in this.rxnArrowsChanged)e=this.rxnArrows.get(t),this.drawReactionArrow(t,e);for(t in this.rxnPlusesChanged)e=this.rxnPluses.get(t),this.drawReactionPlus(t,e)},rnd.ReStruct.prototype.drawReactionArrow=function(e,t){var n=this.render.ps(t.item.pp),r=this.drawArrow(new util.Vec2(n.x-this.render.scale,n.y),new util.Vec2(n.x+this.render.scale,n.y));t.visel.add(r,util.Box2Abs.fromRelBox(rnd.relBox(r.getBBox())));var i=this.render.offset;i!=null&&r.translate(i.x,i.y)},rnd.ReStruct.prototype.drawReactionPlus=function(e,t){var n=this.render.ps(t.item.pp),r=this.drawPlus(n);t.visel.add(r,util.Box2Abs.fromRelBox(rnd.relBox(r.getBBox())));var i=this.render.offset;i!=null&&r.translate(i.x,i.y)},rnd.ReStruct.prototype.drawSGroups=function(){this.sgroups.each(function(e,t){var n=t.draw(this.render);this.addReObjectPath("data",t.visel,n)},this)},rnd.ReStruct.prototype.drawFragments=function(){this.frags.each(function(e,t){var n=t.draw(this.render,e);n&&this.addReObjectPath("data",t.visel,n)},this)},rnd.ReStruct.prototype.drawRGroups=function(){this.rgroups.each(function(e,t){var n=t.draw(this.render);for(var r in n)while(n[r].length>0)this.addReObjectPath(r,t.visel,n[r].shift())},this)},rnd.ReStruct.prototype.eachCC=function(e,t,n){this.connectedComponents.each(function(r,i){(!t||this.ccFragmentType.get(r)==t)&&e.call(n||this,r,i)},this)},rnd.ReStruct.prototype.getGroupBB=function(e){var t={min:null,max:null};return this.eachCC(function(e,n){t=this.connectedComponentGetBoundingBox(e,n,t)},e,this),t},rnd.ReStruct.prototype.updateHalfBonds=function(){for(var e in this.atomsChanged){if(this.atomsChanged[e]<1)continue;this.molecule.atomUpdateHalfBonds(e)}},rnd.ReStruct.prototype.sortNeighbors=function(){for(var e in this.atomsChanged){if(this.atomsChanged[e]<1)continue;this.molecule.atomSortNeighbors(e)}},rnd.ReStruct.prototype.setHydrogenPos=function(){for(var e in this.atomsChanged){var t=this.atoms.get(e);if(t.a.neighbors.length==0){var n=chem.Element.getElementByLabel(t.a.label);n!=null&&(t.hydrogenOnTheLeft=chem.Element.elements.get(n).putHydrogenOnTheLeft);continue}var r=1,i=1,s=0,o=0;for(var u=0;u<t.a.neighbors.length;++u){var a=this.molecule.halfBonds.get(t.a.neighbors[u]).dir;a.x<=0?(r=Math.min(r,Math.abs(a.y)),s++):(i=Math.min(i,Math.abs(a.y)),o++)}r<.51||i<.51?t.hydrogenOnTheLeft=i<r:t.hydrogenOnTheLeft=o>s}},rnd.ReStruct.prototype.setImplicitHydrogen=function(){for(var e in this.atomsChanged)this.molecule.calcImplicitHydrogen(e)},rnd.ReLoop=function(e){this.loop=e,this.visel=new rnd.Visel(rnd.Visel.TYPE.LOOP),this.centre=new util.Vec2,this.radius=new util.Vec2},rnd.ReStruct.prototype.findLoops=function(){var e=this.molecule,t,n,r,i,s;e.halfBonds.each(function(o,u){if(u.loop==-1)for(t=o,r=0,i=[];r<=e.halfBonds.count();t=e.halfBonds.get(t).next,++r){if(r>0&&t==o){var a=2*Math.PI,f=!0;for(n=0;n<i.length;++n){var l=e.halfBonds.get(i[n]),h=e.halfBonds.get(i[(n+1)%i.length]),p=Math.atan2(util.Vec2.cross(l.dir,h.dir),util.Vec2.dot(l.dir,h.dir));p>0&&(f=!1),h.contra==i[n]?a+=Math.PI:a+=p}Math.abs(a)<Math.PI?s=e.loops.add(new chem.Loop(i,e,f)):s=-2,i.each(function(t){e.halfBonds.get(t).loop=s,this.markBond(e.halfBonds.get(t).bid,1)},this),s>=0&&this.reloops.set(s,new rnd.ReLoop(e.loops.get(s)));break}i.push(t)}},this)},rnd.ReStruct.prototype.coordProcess=function(e){e||this.molecule.rescale()},rnd.ReStruct.prototype.scaleCoordinates=function(){var e=this.render,t=e.settings,n=function(t){t.ps=e.ps(t.pp)},r;for(r in this.atomsChanged)n(this.atoms.get(r).a);for(r in this.rxnArrowsChanged)n(this.rxnArrows.get(r).item);for(r in this.rxnPlusesChanged)n(this.rxnPluses.get(r).item)},rnd.ReStruct.prototype.notifyAtomAdded=function(e){var t=new rnd.ReAtom(this.molecule.atoms.get(e));t.component=this.connectedComponents.add(util.Set.single(e)),this.atoms.set(e,t),this.markAtom(e,1)},rnd.ReStruct.prototype.notifyRxnPlusAdded=function(e){this.rxnPluses.set(e,new rnd.ReRxnPlus(this.molecule.rxnPluses.get(e)))},rnd.ReStruct.prototype.notifyRxnArrowAdded=function(e){this.rxnArrows.set(e,new rnd.ReRxnArrow(this.molecule.rxnArrows.get(e)))},rnd.ReStruct.prototype.notifyRxnArrowRemoved=function(e){this.markItemRemoved(),this.clearVisel(this.rxnArrows.get(e).visel),this.rxnArrows.unset(e)},rnd.ReStruct.prototype.notifyRxnPlusRemoved=function(e){this.markItemRemoved(),this.clearVisel(this.rxnPluses.get(e).visel),this.rxnPluses.unset(e)},rnd.ReStruct.prototype.notifyBondAdded=function(e){this.bonds.set(e,new rnd.ReBond(this.molecule.bonds.get(e))),this.markBond(e,1)},rnd.ReStruct.prototype.notifyAtomRemoved=function(e){var t=this.atoms.get(e),n=this.connectedComponents.get(t.component);util.Set.remove(n,e),util.Set.size(n)==0&&this.connectedComponents.remove(t.component),this.clearVisel(t.visel),this.atoms.unset(e),this.markItemRemoved()},rnd.ReStruct.prototype.notifyBondRemoved=function(e){var t=this.bonds.get(e);[t.b.hb1,t.b.hb2].each(function(e){var t=this.molecule.halfBonds.get(e);t.loop>=0&&this.loopRemove(t.loop)},this),this.clearVisel(t.visel),this.bonds.unset(e),this.markItemRemoved()},rnd.ReStruct.prototype.loopRemove=function(e){if(!this.reloops.has(e))return;var t=this.reloops.get(e);this.clearVisel(t.visel);var n=[];for(var r=0;r<t.loop.hbs.length;++r){var i=t.loop.hbs[r];if(!this.molecule.halfBonds.has(i))continue;var s=this.molecule.halfBonds.get(i);s.loop=-1,this.markBond(s.bid,1),this.markAtom(s.begin,1),n.push(s.bid)}this.reloops.unset(e),this.molecule.loops.remove(e)},rnd.ReStruct.prototype.loopIsValid=function(e,t){var n=t.loop,r=!1;return n.hbs.each(function(e){this.molecule.halfBonds.has(e)||(r=!0)},this),!r},rnd.ReStruct.prototype.verifyLoops=function(){var e=[];this.reloops.each(function(t,n){this.loopIsValid(t,n)||e.push(t)},this);for(var t=0;t<e.length;++t)this.loopRemove(e[t])},rnd.ReStruct.prototype.BFS=function(e,t,n){t-=0;var r=new Array,i={};r.push(t),i[t]=1;while(r.length>0){var s=r.shift();e.call(n,s);var o=this.atoms.get(s);for(var u=0;u<o.a.neighbors.length;++u){var a=o.a.neighbors[u],f=this.molecule.halfBonds.get(a);i[f.end]||(i[f.end]=1,r.push(f.end))}}},rnd.ReRxnPlus=function(e){this.init(rnd.Visel.TYPE.PLUS),this.item=e},rnd.ReRxnPlus.prototype=new rnd.ReObject,rnd.ReRxnPlus.findClosest=function(e,t){var n,r;return e.ctab.rxnPluses.each(function(e,i){var s=i.item.pp,o=Math.max(Math.abs(t.x-s.x),Math.abs(t.y-s.y));o<.5&&(!r||o<n)&&(n=o,r={id:e,dist:n})}),r},rnd.ReRxnPlus.prototype.highlightPath=function(e){var t=e.ps(this.item.pp),n=e.settings.scaleFactor;return e.paper.rect(t.x-n/4,t.y-n/4,n/2,n/2,n/8)},rnd.ReRxnPlus.prototype.drawHighlight=function(e){var t=this.highlightPath(e).attr(e.styles.highlightStyle);return e.addItemPath(this.visel,"highlighting",t),t},rnd.ReRxnPlus.prototype.makeSelectionPlate=function(e,t,n){return this.highlightPath(e.render).attr(n.selectionStyle)},rnd.ReRxnArrow=function(e){this.init(rnd.Visel.TYPE.ARROW),this.item=e},rnd.ReRxnArrow.prototype=new rnd.ReObject,rnd.ReRxnArrow.findClosest=function(e,t){var n,r;return e.ctab.rxnArrows.each(function(e,i){var s=i.item.pp;if(Math.abs(t.x-s.x)<1){var o=Math.abs(t.y-s.y);o<.3&&(!r||o<n)&&(n=o,r={id:e,dist:n})}}),r},rnd.ReRxnArrow.prototype.highlightPath=function(e){var t=e.ps(this.item.pp),n=e.settings.scaleFactor;return e.paper.rect(t.x-n,t.y-n/4,2*n,n/2,n/8)},rnd.ReRxnArrow.prototype.drawHighlight=function(e){var t=this.highlightPath(e).attr(e.styles.highlightStyle);return e.addItemPath(this.visel,"highlighting",t),t},rnd.ReRxnArrow.prototype.makeSelectionPlate=function(e,t,n){return this.highlightPath(e.render).attr(n.selectionStyle)},rnd.ReFrag=function(e){this.init(rnd.Visel.TYPE.FRAGMENT),this.item=e},rnd.ReFrag.prototype=new rnd.ReObject,rnd.ReFrag.findClosest=function(e,t,n,r){r=Math.min(r||e.opt.selectionDistanceCoefficient,e.opt.selectionDistanceCoefficient);var i;return e.ctab.frags.each(function(s,o){if(s!=n){var u=o.calcBBox(e,s);if(u.p0.y<t.y&&u.p1.y>t.y&&u.p0.x<t.x&&u.p1.x>t.x){var a=Math.min(Math.abs(u.p0.x-t.x),Math.abs(u.p1.x-t.x));if(!i||a<r)r=a,i={id:s,dist:r}}}}),i},rnd.ReFrag.prototype.fragGetAtoms=function(e,t){var n=[];return e.ctab.atoms.each(function(e,r){r.a.fragment==t&&n.push(e)},this),n},rnd.ReFrag.prototype.fragGetBonds=function(e,t){var n=[];return e.ctab.bonds.each(function(r,i){e.ctab.atoms.get(i.b.begin).a.fragment==t&&e.ctab.atoms.get(i.b.end).a.fragment==t&&n.push(r)},this),n},rnd.ReFrag.prototype.calcBBox=function(e,t){var n;return e.ctab.atoms.each(function(r,i){if(i.a.fragment==t){var s=i.visel.boundingBox;if(!s){s=new util.Box2Abs(i.a.pp,i.a.pp);var o=new util.Vec2(.05*3,.05*3);s=s.extend(o,o)}else s=s.transform(e.scaled2obj,e);n=n?util.Box2Abs.union(n,s):s}},this),n},rnd.ReFrag.prototype._draw=function(e,t,n){var r=this.calcBBox(e,t);if(r){var i=e.obj2scaled(new util.Vec2(r.p0.x,r.p0.y)),s=e.obj2scaled(new util.Vec2(r.p1.x,r.p1.y));return e.paper.rect(i.x,i.y,s.x-i.x,s.y-i.y,0).attr(n)}},rnd.ReFrag.prototype.draw=function(e,t){return null},rnd.ReFrag.prototype.drawHighlight=function(e){var t=e.ctab.frags.keyOf(this);if(!Object.isUndefined(t)){var n=this._draw(e,t,e.styles.highlightStyle);return e.addItemPath(this.visel,"highlighting",n),n}},rnd.ReRGroup=function(e){this.init(rnd.Visel.TYPE.RGROUP),this.item=e},rnd.ReRGroup.prototype=new rnd.ReObject,rnd.ReRGroup.findClosest=function(e,t,n,r){r=Math.min(r||e.opt.selectionDistanceCoefficient,e.opt.selectionDistanceCoefficient);var i;return e.ctab.rgroups.each(function(s,o){if(s!=n){var u=o.calcVBox(e);if(u.p0.y<t.y&&u.p1.y>t.y&&u.p0.x<t.x&&u.p1.x>t.x){var a=Math.min(Math.abs(u.p0.x-t.x),Math.abs(u.p1.x-t.x));if(!i||a<r)r=a,i={id:s,dist:r}}}}),i},rnd.ReRGroup.prototype.calcBBox=function(e){var t;return this.item.frags.each(function(n,r){var i=e.ctab.frags.get(r).calcBBox(e,r);i&&(t=t?util.Box2Abs.union(t,i):i)}),t=t.extend(this.__ext,this.__ext),t},rnd.ReRGroup.prototype.draw=function(e){var t=this.calcBBox(e),n=e.settings;if(t){var r={data:[]},i=e.obj2scaled(new util.Vec2(t.p0.x,t.p0.y)),s=e.obj2scaled(new util.Vec2(t.p1.x,t.p1.y)),o=e.paper.set();chem.SGroup.drawBrackets(o,e,e.paper,n,e.styles,t),r.data.push(o);var u=e.ctab.rgroups.keyOf(this),a=e.paper.text(i.x,(i.y+s.y)/2,"R"+u+"=").attr({font:n.font,"font-size":n.fontRLabel,fill:"black"}),f=rnd.relBox(a.getBBox());a.translate(-f.width/2-n.lineWidth,0);var l={font:n.font,"font-size":n.fontRLogic,fill:"black"},c=[];c.push((this.item.ifthen>0?"IF ":"")+"R"+u.toString()+(this.item.range.length>0?this.item.range.startsWith(">")||this.item.range.startsWith("<")||this.item.range.startsWith("=")?this.item.range:"="+this.item.range:">0")+(this.item.resth?" (RestH)":"")+(this.item.ifthen>0?"\nTHEN R"+this.item.ifthen.toString():""));var h=f.height/2+n.lineWidth/2;for(var p=0;p<c.length;++p){var d=e.paper.text(i.x,(i.y+s.y)/2,c[p]).attr(l),v=rnd.relBox(d.getBBox());h+=v.height/2,d.translate(-v.width/2-6*n.lineWidth,h),h+=v.height/2+n.lineWidth/2,r.data.push(d)}return r.data.push(a),r}return{}},rnd.ReRGroup.prototype._draw=function(e,t,n){var r=this.calcVBox(e).extend(this.__ext,this.__ext);if(r){var i=e.obj2scaled(new util.Vec2(r.p0.x,r.p0.y)),s=e.obj2scaled(new util.Vec2(r.p1.x,r.p1.y));return e.paper.rect(i.x,i.y,s.x-i.x,s.y-i.y,0).attr(n)}},rnd.ReRGroup.prototype.drawHighlight=function(e){var t=e.ctab.rgroups.keyOf(this);if(!Object.isUndefined(t)){var n=this._draw(e,t,e.styles.highlightStyle);return e.addItemPath(this.visel,"highlighting",n),n}},rnd.ReSGroup=function(e){this.init(rnd.Visel.TYPE.SGROUP),this.item=e},rnd.ReSGroup.prototype=new rnd.ReObject,rnd.ReSGroup.findClosest=function(e,t){var n=null,r=e.opt.selectionDistanceCoefficient;return e.ctab.molecule.sgroups.each(function(e,i){var s=i.bracketDir,o=s.rotateSC(1,0),u=new util.Vec2(util.Vec2.dot(t,s),util.Vec2.dot(t,o));for(var a=0;a<i.areas.length;++a){var f=i.areas[a],l=f.p0.y<u.y&&f.p1.y>u.y&&f.p0.x<u.x&&f.p1.x>u.x,c=Math.min(Math.abs(f.p0.x-u.x),Math.abs(f.p1.x-u.x));l&&(n==null||c<r)&&(n=e,r=c)}},this),n!=null?{id:n,dist:r}:null},rnd.ReSGroup.prototype.draw=function(e){return this.item.draw(e.ctab)},rnd.ReSGroup.prototype.drawHighlight=function(e){var t=e.styles,n=e.settings,r=e.paper,i=this.item,s=i.bracketBox.transform(e.obj2scaled,e),o=n.lineWidth,u=new util.Vec2(o*4,o*6);s=s.extend(u,u);var a=i.bracketDir,f=a.rotateSC(1,0),l=util.Vec2.lc2(a,s.p0.x,f,s.p0.y),c=util.Vec2.lc2(a,s.p0.x,f,s.p1.y),h=util.Vec2.lc2(a,s.p1.x,f,s.p0.y),p=util.Vec2.lc2(a,s.p1.x,f,s.p1.y),d=r.set();i.highlighting=r.path("M{0},{1}L{2},{3}L{4},{5}L{6},{7}L{0},{1}",l.x,l.y,c.x,c.y,p.x,p.y,h.x,h.y).attr(t.highlightStyle),d.push(i.highlighting),e.ctab.addReObjectPath("highlighting",this.visel,i.highlighting);var v=chem.SGroup.getAtoms(e.ctab.molecule,i);return v.each(function(n){var i=e.ctab.atoms.get(n),s=e.ps(i.a.pp);i.sGroupHighlighting=r.circle(s.x,s.y,.7*t.atomSelectionPlateRadius).attr(t.sGroupHighlightStyle),d.push(i.sGroupHighlighting),e.ctab.addReObjectPath("highlighting",this.visel,i.sGroupHighlighting)},this),d},rnd.ReDataSGroupData=function(e){this.init(rnd.Visel.TYPE.SGROUP_DATA),this.sgroup=e},rnd.ReDataSGroupData.prototype=new rnd.ReObject,rnd.ReDataSGroupData.findClosest=function(e,t){var n=null,r=null;return e.ctab.sgroupData.each(function(e,i){if(i.sgroup.type!="DAT")throw new Error("Data group expected");var s=i.sgroup.dataArea,o=s.p0.y<t.y&&s.p1.y>t.y&&s.p0.x<t.x&&s.p1.x>t.x,u=Math.min(Math.abs(s.p0.x-t.x),Math.abs(s.p1.x-t.x));o&&(r==null||u<n)&&(r={id:e,dist:u},n=u)}),r},rnd.ReDataSGroupData.prototype.highlightPath=function(e){var t=this.sgroup.dataArea,n=e.obj2scaled(t.p0),r=e.obj2scaled(t.p1).sub(n);return e.paper.rect(n.x,n.y,r.x,r.y)},rnd.ReDataSGroupData.prototype.drawHighlight=function(e){var t=this.highlightPath(e).attr(e.styles.highlightStyle);return e.addItemPath(this.visel,"highlighting",t),t},rnd.ReDataSGroupData.prototype.makeSelectionPlate=function(e,t,n){return this.highlightPath(e.render).attr(n.selectionStyle)},rnd.ReChiralFlag=function(e){this.init(rnd.Visel.TYPE.CHIRAL_FLAG),this.pp=e},rnd.ReChiralFlag.prototype=new rnd.ReObject,rnd.ReChiralFlag.findClosest=function(e,t){var n,r;return e.ctab.chiralFlags.each(function(e,i){var s=i.pp;if(Math.abs(t.x-s.x)<1){var o=Math.abs(t.y-s.y);o<.3&&(!r||o<n)&&(n=o,r={id:e,dist:n})}}),r},rnd.ReChiralFlag.prototype.highlightPath=function(e){var t=util.Box2Abs.fromRelBox(this.path.getBBox()),n=t.p1.sub(t.p0),r=t.p0.sub(e.offset);return e.paper.rect(r.x,r.y,n.x,n.y)},rnd.ReChiralFlag.prototype.drawHighlight=function(e){var t=this.highlightPath(e).attr(e.styles.highlightStyle);return e.addItemPath(this.visel,"highlighting",t),t},rnd.ReChiralFlag.prototype.makeSelectionPlate=function(e,t,n){return this.highlightPath(e.render).attr(n.selectionStyle)},rnd.ReChiralFlag.prototype.draw=function(e){var t=e.paper,n=e.settings,r=e.ps(this.pp);this.path=t.text(r.x,r.y,"Chiral").attr({font:n.font,"font-size":n.fontsz,fill:"#000"}),e.addItemPath(this.visel,"data",this.path)};