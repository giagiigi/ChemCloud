/****************************************************************************
 * Copyright (C) 2009-2010 GGA Software Services LLC
 *
 * This file may be distributed and/or modified under the terms of the
 * GNU Affero General Public License version 3 as published by the Free
 * Software Foundation and appearing in the file LICENSE.GPL included in
 * the packaging of this file.
 *
 * This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
 * WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
 ***************************************************************************/
// chem.Struct constructor and utilities are defined here
if(!window.chem||!util.Vec2||!util.Pool)throw new Error("Vec2, Pool should be defined first");chem.Struct=function(){this.atoms=new util.Pool,this.bonds=new util.Pool,this.sgroups=new util.Pool,this.halfBonds=new util.Map,this.loops=new util.Pool,this.isChiral=!1,this.isReaction=!1,this.rxnArrows=new util.Pool,this.rxnPluses=new util.Pool,this.frags=new util.Pool,this.rgroups=new util.Map},chem.Struct.prototype.isBlank=function(){return this.atoms.count()==0&&this.rxnArrows.count()==0&&this.rxnPluses.count()==0&&!this.isChiral},chem.Struct.prototype.toLists=function(){var e={},t=[];this.atoms.each(function(n,r){e[n]=t.length,t.push(r)});var n=[];return this.bonds.each(function(t,r){var i=new chem.Struct.Bond(r);i.begin=e[r.begin],i.end=e[r.end],n.push(i)}),{atoms:t,bonds:n}},chem.Struct.prototype.clone=function(e,t,n){var r=new chem.Struct;return this.mergeInto(r,e,t,n)},chem.Struct.prototype.getScaffold=function(){var e=util.Set.empty();return this.atoms.each(function(t){util.Set.add(e,t)},this),this.rgroups.each(function(t,n){n.frags.each(function(t,n){this.atoms.each(function(t,r){r.fragment==n&&util.Set.remove(e,t)},this)},this)},this),this.clone(e)},chem.Struct.prototype.getFragment=function(e){var t=util.Set.empty();return this.atoms.each(function(n,r){r.fragment==e&&util.Set.add(t,n)},this),this.clone(t)},chem.Struct.prototype.mergeInto=function(e,t,n,r,i){t=t||util.Set.keySetInt(this.atoms),n=n||util.Set.keySetInt(this.bonds),n=util.Set.filter(n,function(e){var n=this.bonds.get(e);return util.Set.contains(t,n.begin)&&util.Set.contains(t,n.end)},this);var s={};this.atoms.each(function(e,n){util.Set.contains(t,e)&&(s[n.fragment]=1)});var o={};this.frags.each(function(t,n){s[t]&&(o[t]=e.frags.add(n.clone()))}),this.rgroups.each(function(t,n){var r=i;if(!r){n.frags.each(function(e,t){s[t]&&(r=!0)});if(!r)return}var u=e.rgroups.get(t);u?n.frags.each(function(e,t){s[t]&&u.frags.add(o[t])}):e.rgroups.set(t,n.clone(o))});var u={};this.atoms.each(function(n,r){util.Set.contains(t,n)&&(u[n]=e.atoms.add(r.clone(o)))});var a={};return this.bonds.each(function(t,r){util.Set.contains(n,t)&&(a[t]=e.bonds.add(r.clone(u)))}),this.sgroups.each(function(n,r){var i;for(i=0;i<r.atoms.length;++i)if(!util.Set.contains(t,r.atoms[i]))return;r=chem.SGroup.clone(r,u,a);var s=e.sgroups.add(r);r.id=s;for(i=0;i<r.atoms.length;++i)util.Set.add(e.atoms.get(r.atoms[i]).sgs,s)}),e.isChiral=this.isChiral,r||(e.isReaction=this.isReaction,this.rxnArrows.each(function(t,n){e.rxnArrows.add(n.clone())}),this.rxnPluses.each(function(t,n){e.rxnPluses.add(n.clone())})),e},chem.Struct.prototype.findBondId=function(e,t){var n=-1;return this.bonds.find(function(r,i){return i.begin==e&&i.end==t||i.begin==t&&i.end==e?(n=r,!0):!1},this),n},chem.Struct.ATOM={RADICAL:{NONE:0,SINGLET:1,DOUPLET:2,TRIPLET:3}},chem.Struct.radicalElectrons=function(e){e-=0;if(e==chem.Struct.ATOM.RADICAL.NONE)return 0;if(e==chem.Struct.ATOM.RADICAL.DOUPLET)return 1;if(e==chem.Struct.ATOM.RADICAL.SINGLET||e==chem.Struct.ATOM.RADICAL.TRIPLET)return 2;throw new Error("Unknown radical value")},chem.Struct.BOND={TYPE:{SINGLE:1,DOUBLE:2,TRIPLE:3,AROMATIC:4,SINGLE_OR_DOUBLE:5,SINGLE_OR_AROMATIC:6,DOUBLE_OR_AROMATIC:7,ANY:8},STEREO:{NONE:0,UP:1,EITHER:4,DOWN:6,CIS_TRANS:3},TOPOLOGY:{EITHER:0,RING:1,CHAIN:2},REACTING_CENTER:{NOT_CENTER:-1,UNMARKED:0,CENTER:1,UNCHANGED:2,MADE_OR_BROKEN:4,ORDER_CHANGED:8,MADE_OR_BROKEN_AND_CHANGED:12}},chem.Struct.FRAGMENT={NONE:0,REACTANT:1,PRODUCT:2,AGENT:3},chem.Struct.Atom=function(e){if(!e||!("label"in e))throw new Error("label must be specified!");this.label=e.label,this.fragment=Object.isUndefined(e.fragment)?-1:e.fragment,util.ifDef(this,e,"isotope",0),util.ifDef(this,e,"radical",0),util.ifDef(this,e,"charge",0),util.ifDef(this,e,"valence",0),util.ifDef(this,e,"rglabel",null),util.ifDef(this,e,"attpnt",null),util.ifDef(this,e,"explicitValence",0),util.ifDef(this,e,"implicitH",0),Object.isUndefined(e.pp)?this.pp=new util.Vec2:this.pp=new util.Vec2(e.pp),this.sgs={},util.ifDef(this,e,"ringBondCount",0),util.ifDef(this,e,"substitutionCount",0),util.ifDef(this,e,"unsaturatedAtom",0),util.ifDef(this,e,"hCount",0),util.ifDef(this,e,"aam",0),util.ifDef(this,e,"invRet",0),util.ifDef(this,e,"exactChangeFlag",0),util.ifDef(this,e,"rxnFragmentType",-1),this.atomList=!Object.isUndefined(e.atomList)&&e.atomList!=null?new chem.Struct.AtomList(e.atomList):null,this.neighbors=[],this.badConn=!1},chem.Struct.Atom.getAttrHash=function(e){var t=new Hash;for(var n in chem.Struct.Atom.attrlist)typeof e[n]!="undefined"&&t.set(n,e[n]);return t},chem.Struct.Atom.attrlist={label:0,isotope:0,radical:0,charge:0,valence:0,explicitValence:0,implicitH:0,ringBondCount:0,substitutionCount:0,unsaturatedAtom:0,hCount:0,atomList:null,rglabel:null,attpnt:null,aam:0},chem.Struct.Atom.prototype.clone=function(e){var t=new chem.Struct.Atom(this);return e&&this.fragment in e&&(t.fragment=e[this.fragment]),t},chem.Struct.Atom.prototype.isQuery=function(){return this.atomList!=null||this.label=="A"},chem.Struct.Atom.prototype.pureHydrogen=function(){return this.label=="H"&&this.isotope==0},chem.Struct.Atom.prototype.isPlainCarbon=function(){return this.label=="C"&&this.isotope==0&&this.isotope==0&&this.radical==0&&this.charge==0&&this.explicitValence==0&&this.ringBondCount==0&&this.substitutionCount==0&&this.unsaturatedAtom==0&&this.hCount==0&&!this.atomList},chem.Struct.AtomList=function(e){if(!(!!e&&"notList"in e&&"ids"in e))throw new Error("'notList' and 'ids' must be specified!");this.notList=e.notList,this.ids=e.ids},chem.Struct.AtomList.prototype.labelList=function(){var e=[];for(var t=0;t<this.ids.length;++t)e.push(chem.Element.elements.get(this.ids[t]).label);return e},chem.Struct.AtomList.prototype.label=function(){var e="["+this.labelList().join(",")+"]";return this.notList&&(e="!"+e),e},chem.Struct.Bond=function(e){if(!(!!e&&"begin"in e&&"end"in e&&"type"in e))throw new Error("'begin', 'end' and 'type' properties must be specified!");this.begin=e.begin,this.end=e.end,this.type=e.type,util.ifDef(this,e,"stereo",chem.Struct.BOND.STEREO.NONE),util.ifDef(this,e,"topology",chem.Struct.BOND.TOPOLOGY.EITHER),util.ifDef(this,e,"reactingCenterStatus",0),this.hb1=null,this.hb2=null,this.len=0,this.center=new util.Vec2,this.sb=0,this.sa=0,this.angle=0},chem.Struct.Bond.prototype.clone=function(e){var t=new chem.Struct.Bond(this);return e&&(t.begin=e[t.begin],t.end=e[t.end]),t},chem.Struct.Bond.prototype.findOtherEnd=function(e){if(e==this.begin)return this.end;if(e==this.end)return this.begin;throw new Error("bond end not found")},chem.HalfBond=function(e,t,n){if(arguments.length!=3)throw new Error("Invalid parameter number!");this.begin=e-0,this.end=t-0,this.bid=n-0,this.dir=new util.Vec2,this.norm=new util.Vec2,this.ang=0,this.p=new util.Vec2,this.loop=-1,this.contra=-1,this.next=-1,this.leftSin=0,this.leftCos=0,this.leftNeighbor=0,this.rightSin=0,this.rightCos=0,this.rightNeighbor=0},chem.Struct.prototype.initNeighbors=function(){this.atoms.each(function(e,t){t.neighbors=[]}),this.bonds.each(function(e,t){var n=this.atoms.get(t.begin),r=this.atoms.get(t.end);n.neighbors.push(t.hb1),r.neighbors.push(t.hb2)},this)},chem.Struct.prototype.bondInitHalfBonds=function(e,t){t=t||this.bonds.get(e),t.hb1=2*e,t.hb2=2*e+1,this.halfBonds.set(t.hb1,new chem.HalfBond(t.begin,t.end,e)),this.halfBonds.set(t.hb2,new chem.HalfBond(t.end,t.begin,e));var n=this.halfBonds.get(t.hb1),r=this.halfBonds.get(t.hb2);n.contra=t.hb2,r.contra=t.hb1},chem.Struct.prototype.halfBondUpdate=function(e){var t=this.halfBonds.get(e),n=this.atoms.get(t.begin).pp,r=this.atoms.get(t.end).pp,i=util.Vec2.diff(r,n).normalized();t.dir=i,t.norm=i.turnLeft(),t.ang=t.dir.oxAngle(),t.loop<0&&(t.loop=-1)},chem.Struct.prototype.initHalfBonds=function(){this.halfBonds.clear(),this.bonds.each(this.bondInitHalfBonds,this)},chem.Struct.prototype.setHbNext=function(e,t){this.halfBonds.get(this.halfBonds.get(e).contra).next=t},chem.Struct.prototype.halfBondSetAngle=function(e,t){var n=this.halfBonds.get(e),r=this.halfBonds.get(t);r.rightCos=n.leftCos=util.Vec2.dot(r.dir,n.dir),r.rightSin=n.leftSin=util.Vec2.cross(r.dir,n.dir),n.leftNeighbor=t,r.rightNeighbor=e},chem.Struct.prototype.atomAddNeighbor=function(e){var t=this.halfBonds.get(e),n=this.atoms.get(t.begin),r=0;for(r=0;r<n.neighbors.length;++r)if(this.halfBonds.get(n.neighbors[r]).ang>t.ang)break;n.neighbors.splice(r,0,e);var i=n.neighbors[(r+1)%n.neighbors.length],s=n.neighbors[(r+n.neighbors.length-1)%n.neighbors.length];this.setHbNext(s,e),this.setHbNext(e,i),this.halfBondSetAngle(e,s),this.halfBondSetAngle(i,e)},chem.Struct.prototype.atomSortNeighbors=function(e){var t=this.atoms.get(e);t.neighbors=t.neighbors.sortBy(function(e){return this.halfBonds.get(e).ang},this);var n;for(n=0;n<t.neighbors.length;++n)this.halfBonds.get(this.halfBonds.get(t.neighbors[n]).contra).next=t.neighbors[(n+1)%t.neighbors.length];for(n=0;n<t.neighbors.length;++n)this.halfBondSetAngle(t.neighbors[(n+1)%t.neighbors.length],t.neighbors[n])},chem.Struct.prototype.atomUpdateHalfBonds=function(e){var t=this.atoms.get(e).neighbors;for(var n=0;n<t.length;++n){var r=t[n];this.halfBondUpdate(r),this.halfBondUpdate(this.halfBonds.get(r).contra)}},chem.Struct.prototype.sGroupsRecalcCrossBonds=function(){this.sgroups.each(function(e,t){t.xBonds=[],t.neiAtoms=[]},this),this.bonds.each(function(e,t){var n=this.atoms.get(t.begin),r=this.atoms.get(t.end);util.Set.each(n.sgs,function(n){if(!util.Set.contains(r.sgs,n)){var i=this.sgroups.get(n);i.xBonds.push(e),util.arrayAddIfMissing(i.neiAtoms,t.end)}},this),util.Set.each(r.sgs,function(r){if(!util.Set.contains(n.sgs,r)){var i=this.sgroups.get(r);i.xBonds.push(e),util.arrayAddIfMissing(i.neiAtoms,t.begin)}},this)},this)},chem.Struct.prototype.sGroupDelete=function(e){var t=this.sgroups.get(e);for(var n=0;n<t.atoms.length;++n)util.Set.remove(this.atoms.get(t.atoms[n]).sgs,e);this.sgroups.remove(e)},chem.Struct.itemSetPos=function(e,t){e.pp=t},chem.Struct.prototype._itemSetPos=function(e,t,n,r){chem.Struct.itemSetPos(this[e].get(t),n,r)},chem.Struct.prototype._atomSetPos=function(e,t,n){this._itemSetPos("atoms",e,t,n)},chem.Struct.prototype._rxnPlusSetPos=function(e,t,n){this._itemSetPos("rxnPluses",e,t,n)},chem.Struct.prototype._rxnArrowSetPos=function(e,t,n){this._itemSetPos("rxnArrows",e,t,n)},chem.Struct.prototype.getCoordBoundingBox=function(e){var t=null,n=function(e){t?(t.min=util.Vec2.min(t.min,e),t.max=util.Vec2.max(t.max,e)):t={min:e,max:e}},r=typeof e=="undefined";return this.atoms.each(function(t,i){(r||util.Set.contains(e,t))&&n(i.pp)}),r&&(this.rxnPluses.each(function(e,t){n(t.pp)}),this.rxnArrows.each(function(e,t){n(t.pp)})),!t&&r&&(t={min:new util.Vec2(0,0),max:new util.Vec2(1,1)}),t},chem.Struct.prototype.getCoordBoundingBoxObj=function(){var e=null,t=function(t){e?(e.min=util.Vec2.min(e.min,t),e.max=util.Vec2.max(e.max,t)):e={min:new util.Vec2(t),max:new util.Vec2(t)}};return this.atoms.each(function(e,n){t(n.pp)}),e},chem.Struct.prototype.getBondLengthData=function(){var e=0,t=0;return this.bonds.each(function(n,r){e+=util.Vec2.dist(this.atoms.get(r.begin).pp,this.atoms.get(r.end).pp),t++},this),{cnt:t,totalLength:e}},chem.Struct.prototype.getAvgBondLength=function(){var e=this.getBondLengthData();return e.cnt>0?e.totalLength/e.cnt:-1},chem.Struct.prototype.getAvgClosestAtomDistance=function(){var e=0,t,n=0,r=this.atoms.keys(),i,s;for(i=0;i<r.length;++i){t=-1;for(s=0;s<r.length;++s){if(s==i)continue;n=util.Vec2.dist(this.atoms.get(r[s]).pp,this.atoms.get(r[i]).pp);if(t<0||t>n)t=n}e+=t}return r.length>0?e/r.length:-1},chem.Struct.prototype.checkBondExists=function(e,t){var n=!1;return this.bonds.each(function(r,i){if(i.begin==e&&i.end==t||i.end==e&&i.begin==t)n=!0},this),n},chem.Loop=function(e,t,n){this.hbs=e,this.dblBonds=0,this.aromatic=!0,this.convex=n||!1,e.each(function(e){var n=t.bonds.get(t.halfBonds.get(e).bid);n.type!=chem.Struct.BOND.TYPE.AROMATIC&&(this.aromatic=!1),n.type==chem.Struct.BOND.TYPE.DOUBLE&&this.dblBonds++},this)},chem.Struct.RxnPlus=function(e){e=e||{},this.pp=e.pp?new util.Vec2(e.pp):new util.Vec2},chem.Struct.RxnPlus.prototype.clone=function(){return new chem.Struct.RxnPlus(this)},chem.Struct.RxnArrow=function(e){e=e||{},this.pp=e.pp?new util.Vec2(e.pp):new util.Vec2},chem.Struct.RxnArrow.prototype.clone=function(){return new chem.Struct.RxnArrow(this)},chem.Struct.prototype.findConnectedComponent=function(e){var t={},n=[e],r=util.Set.empty();while(n.length>0)(function(){var e=n.pop();t[e]=1,util.Set.add(r,e);var i=this.atoms.get(e);for(var s=0;s<i.neighbors.length;++s){var o=this.halfBonds.get(i.neighbors[s]).end;util.Set.contains(r,o)||n.push(o)}}).apply(this);return r},chem.Struct.prototype.findConnectedComponents=function(e){var t={};this.atoms.each(function(e,n){t[e]=-1},this);var n=[];return this.atoms.each(function(r,i){if((e||i.fragment<0)&&t[r]<0){var s=this.findConnectedComponent(r);n.push(s),util.Set.each(s,function(e){t[e]=1},this)}},this),n},chem.Struct.prototype.markFragment=function(e){var t=this.frags.add(new chem.Struct.Fragment);util.Set.each(e,function(e){this.atoms.get(e).fragment=t},this)},chem.Struct.prototype.markFragmentByAtomId=function(e){this.markFragment(this.findConnectedComponent(e))},chem.Struct.prototype.markFragments=function(){var e=this.findConnectedComponents();for(var t=0;t<e.length;++t)this.markFragment(e[t])},chem.Struct.Fragment=function(){},chem.Struct.Fragment.prototype.clone=function(){return Object.clone(this)},chem.Struct.Fragment.getAtoms=function(e,t){var n=[];return e.atoms.each(function(e,r){r.fragment==t&&n.push(e)},this),n},chem.Struct.RGroup=function(e){e=e||{},this.frags=new util.Pool,this.resth=e.resth||!1,this.range=e.range||"",this.ifthen=e.ifthen||0},chem.Struct.RGroup.prototype.getAttrs=function(){return{resth:this.resth,range:this.range,ifthen:this.ifthen}},chem.Struct.RGroup.findRGroupByFragment=function(e,t){var n;return e.each(function(e,r){Object.isUndefined(r.frags.keyOf(t))||(n=e)}),n},chem.Struct.RGroup.prototype.clone=function(e){var t=new chem.Struct.RGroup(this);return this.frags.each(function(n,r){t.frags.add(e?e[r]:r)}),t},chem.Struct.prototype.scale=function(e){e!=1&&(this.atoms.each(function(t,n){n.pp=n.pp.scaled(e)},this),this.rxnPluses.each(function(t,n){n.pp=n.pp.scaled(e)},this),this.rxnArrows.each(function(t,n){n.pp=n.pp.scaled(e)},this),this.sgroups.each(function(t,n){n.pp=n.pp?n.pp.scaled(e):null},this))},chem.Struct.prototype.rescale=function(){var e=this.getAvgBondLength();e<0&&!this.isReaction&&(e=this.getAvgClosestAtomDistance()),e<.001&&(e=1);var t=1/e;this.scale(t)};