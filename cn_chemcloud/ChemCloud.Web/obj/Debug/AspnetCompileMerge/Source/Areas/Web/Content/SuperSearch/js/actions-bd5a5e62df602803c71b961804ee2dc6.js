/****************************************************************************
 * Copyright (C) 2009-2011 GGA Software Services LLC
 *
 * This file may be distributed and/or modified under the terms of the
 * GNU Affero General Public License version 3 as published by the Free
 * Software Foundation and appearing in the file LICENSE.GPL included in
 * the packaging of this file.
 *
 * This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
 * WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
 ***************************************************************************/
typeof ui=="undefined"&&(ui=function(){}),ui.Action=function(){this.operations=new Array},ui.Action.prototype.addOp=function(e){return this.operations.push(e),e},ui.Action.prototype.mergeWith=function(e){return this.operations=this.operations.concat(e.operations),this},ui.Action.prototype.perform=function(){var e=new ui.Action,t=0;return this.operations.each(function(n){e.addOp(n.perform(ui.editor)),t++},this),e.operations.reverse(),e},ui.Action.prototype.isDummy=function(){return this.operations.detect(function(e){return!e.isDummy(ui.editor)},this)==null},ui.Action.fromSelectedAtomsMove=function(e,t){e=e||ui.selection;var n=new ui.Action;return e.atoms.each(function(e){n.addOp(new ui.Action.OpAtomMove(e,t))},this),n},ui.Action.fromMultipleMove=function(e,t){t=new util.Vec2(t);var n=new ui.Action,r;if(e.atoms)for(r=0;r<e.atoms.length;++r)n.addOp(new ui.Action.OpAtomMove(e.atoms[r],t));if(e.rxnArrows)for(r=0;r<e.rxnArrows.length;++r)n.addOp(new ui.Action.OpRxnArrowMove(e.rxnArrows[r],t));if(e.rxnPluses)for(r=0;r<e.rxnPluses.length;++r)n.addOp(new ui.Action.OpRxnPlusMove(e.rxnPluses[r],t));if(e.sgroupData)for(r=0;r<e.sgroupData.length;++r)n.addOp(new ui.Action.OpSGroupDataMove(e.sgroupData[r],t));if(e.chiralFlags)for(r=0;r<e.chiralFlags.length;++r)n.addOp(new ui.Action.OpChiralFlagMove(t));return n.perform()},ui.Action.fromAtomAttrs=function(e,t){var n=new ui.Action;return(new Hash(t)).each(function(t){n.addOp(new ui.Action.OpAtomAttr(e,t.key,t.value))},this),n.perform()},ui.Action.fromSelectedAtomsAttrs=function(e){var t=new ui.Action;return(new Hash(e)).each(function(e){ui.selection.atoms.each(function(n){t.addOp(new ui.Action.OpAtomAttr(n,e.key,e.value))},this)},this),t.perform()},ui.Action.fromBondAttrs=function(e,t,n){var r=new ui.Action;return(new Hash(t)).each(function(t){r.addOp(new ui.Action.OpBondAttr(e,t.key,t.value))},this),n&&r.mergeWith(ui.Action.toBondFlipping(e)),r.perform()},ui.Action.fromSelectedBondsAttrs=function(e,t){var n=new ui.Action;return e=new Hash(e),ui.selection.bonds.each(function(t){e.each(function(e){n.addOp(new ui.Action.OpBondAttr(t,e.key,e.value))},this)},this),t&&t.each(function(e){n.mergeWith(ui.Action.toBondFlipping(e))},this),n.perform()},ui.Action.fromAtomAddition=function(e,t){t=Object.clone(t);var n=new ui.Action;return t.fragment=n.addOp((new ui.Action.OpFragmentAdd).perform(ui.editor)).frid,n.addOp((new ui.Action.OpAtomAdd(t,e)).perform(ui.editor)),n},ui.Action.mergeFragments=function(e,t,n){if(n!=t&&Object.isNumber(n)){var r=chem.Struct.RGroup.findRGroupByFragment(ui.render.ctab.molecule.rgroups,n);Object.isUndefined(r)||e.mergeWith(ui.Action.fromRGroupFragment(null,n)),ui.render.ctab.molecule.atoms.each(function(r,i){i.fragment==n&&e.addOp((new ui.Action.OpAtomAttr(r,"fragment",t)).perform(ui.editor))}),e.addOp((new ui.Action.OpFragmentDelete(n)).perform(ui.editor))}},ui.Action.fromBondAddition=function(e,t,n,r,i){var s=new ui.Action,o=null;if(!Object.isNumber(t))Object.isNumber(n)&&(o=ui.render.atomGetAttr(n,"fragment"));else{o=ui.render.atomGetAttr(t,"fragment");if(Object.isNumber(n)){var u=ui.render.atomGetAttr(n,"fragment");ui.Action.mergeFragments(s,o,u)}}return o==null&&(o=s.addOp((new ui.Action.OpFragmentAdd).perform(ui.editor)).frid),Object.isNumber(t)?ui.render.atomGetAttr(t,"label")=="*"&&s.addOp((new ui.Action.OpAtomAttr(t,"label","C")).perform(ui.editor)):(t.fragment=o,t=s.addOp((new ui.Action.OpAtomAdd(t,r)).perform(ui.editor)).data.aid,r=i),Object.isNumber(n)?ui.render.atomGetAttr(n,"label")=="*"&&s.addOp((new ui.Action.OpAtomAttr(n,"label","C")).perform(ui.editor)):(n.fragment=o,n=s.addOp((new ui.Action.OpAtomAdd(n,r)).perform(ui.editor)).data.aid,Object.isNumber(t)&&ui.render.atomGetSGroups(t).each(function(e){s.addOp((new ui.Action.OpSGroupAtomAdd(e,n)).perform(ui.editor))},this)),s.addOp((new ui.Action.OpBondAdd(t,n,e)).perform(ui.editor)),s.operations.reverse(),[s,t,n]},ui.Action.fromArrowAddition=function(e){var t=new ui.Action;return ui.ctab.rxnArrows.count()<1&&t.addOp((new ui.Action.OpRxnArrowAdd(e)).perform(ui.editor)),t},ui.Action.fromArrowDeletion=function(e){var t=new ui.Action;return t.addOp(new ui.Action.OpRxnArrowDelete(e)),t.perform()},ui.Action.fromChiralFlagAddition=function(e){var t=new ui.Action;return ui.render.ctab.chiralFlags.count()<1&&t.addOp((new ui.Action.OpChiralFlagAdd(e)).perform(ui.editor)),t},ui.Action.fromChiralFlagDeletion=function(){var e=new ui.Action;return e.addOp(new ui.Action.OpChiralFlagDelete),e.perform()},ui.Action.fromPlusAddition=function(e){var t=new ui.Action;return t.addOp((new ui.Action.OpRxnPlusAdd(e)).perform(ui.editor)),t},ui.Action.fromPlusDeletion=function(e){var t=new ui.Action;return t.addOp(new ui.Action.OpRxnPlusDelete(e)),t.perform()},ui.Action.prototype.removeAtomFromSgroupIfNeeded=function(e){var t=ui.render.atomGetSGroups(e);return t.length>0?(t.each(function(t){this.addOp(new ui.Action.OpSGroupAtomRemove(t,e))},this),!0):!1},ui.Action.prototype.removeSgroupIfNeeded=function(e){var t=ui.render,n=t.ctab,r=n.molecule,i=new Hash;e.each(function(e){var t=ui.render.atomGetSGroups(e);t.each(function(e){var t=i.get(e);Object.isUndefined(t)?t=1:t++,i.set(e,t)},this)},this),i.each(function(e){var t=parseInt(e.key),n=ui.render.sGroupGetAtoms(t);if(n.length==e.value){var i=r.sgroups.get(t);this.mergeWith(ui.Action.sGroupAttributeAction(t,i.getAttrs())),this.addOp(new ui.Action.OpSGroupDelete(t))}},this)},ui.Action.fromAtomDeletion=function(e){var t=new ui.Action,n=new Array,r=ui.ctab.atoms.get(e).fragment;return ui.render.atomGetNeighbors(e).each(function(e){t.addOp(new ui.Action.OpBondDelete(e.bid)),ui.render.atomGetDegree(e.aid)==1&&(t.removeAtomFromSgroupIfNeeded(e.aid)&&n.push(e.aid),t.addOp(new ui.Action.OpAtomDelete(e.aid)))},this),t.removeAtomFromSgroupIfNeeded(e)&&n.push(e),t.addOp(new ui.Action.OpAtomDelete(e)),t.removeSgroupIfNeeded(n),t=t.perform(),t.mergeWith(ui.Action.__fromFragmentSplit(r)),t},ui.Action.fromBondDeletion=function(e){var t=new ui.Action,n=ui.ctab.bonds.get(e),r=ui.ctab.atoms.get(n.begin).fragment,i=new Array;return t.addOp(new ui.Action.OpBondDelete(e)),ui.render.atomGetDegree(n.begin)==1&&(t.removeAtomFromSgroupIfNeeded(n.begin)&&i.push(n.begin),t.addOp(new ui.Action.OpAtomDelete(n.begin))),ui.render.atomGetDegree(n.end)==1&&(t.removeAtomFromSgroupIfNeeded(n.end)&&i.push(n.end),t.addOp(new ui.Action.OpAtomDelete(n.end))),t.removeSgroupIfNeeded(i),t=t.perform(),t.mergeWith(ui.Action.__fromFragmentSplit(r)),t},ui.Action.__fromFragmentSplit=function(e){var t=new ui.Action,n=chem.Struct.RGroup.findRGroupByFragment(ui.ctab.rgroups,e);return ui.ctab.atoms.each(function(r,i){if(i.fragment==e){var s=t.addOp((new ui.Action.OpFragmentAdd).perform(ui.editor)).frid,o=function(n){t.addOp((new ui.Action.OpAtomAttr(n,"fragment",s)).perform(ui.editor)),ui.render.atomGetNeighbors(n).each(function(t){ui.ctab.atoms.get(t.aid).fragment==e&&o(t.aid)})};o(r),n&&t.mergeWith(ui.Action.fromRGroupFragment(n,s))}}),e!=-1&&(t.mergeWith(ui.Action.fromRGroupFragment(0,e)),t.addOp((new ui.Action.OpFragmentDelete(e)).perform(ui.editor))),t},ui.Action.fromFragmentAddition=function(e,t,n,r,i){var s=new ui.Action;return n.each(function(e){s.addOp(new ui.Action.OpSGroupDelete(e))},this),t.each(function(e){s.addOp(new ui.Action.OpBondDelete(e))},this),e.each(function(e){s.addOp(new ui.Action.OpAtomDelete(e))},this),r.each(function(e){s.addOp(new ui.Action.OpRxnArrowDelete(e))},this),i.each(function(e){s.addOp(new ui.Action.OpRxnPlusDelete(e))},this),s.mergeWith(new ui.Action.__fromFragmentSplit(-1)),s},ui.Action.fromFragmentDeletion=function(e){e=e||ui.selection;var t=new ui.Action,n=new Array,r=[],i=new ui.Action;e.sgroupData&&e.sgroupData.each(function(e){i.mergeWith(ui.Action.fromSgroupDeletion(e))},this),e.atoms.each(function(t){ui.render.atomGetNeighbors(t).each(function(t){e.bonds.indexOf(t.bid)==-1&&(e.bonds=e.bonds.concat([t.bid]))},this)},this),e.bonds.each(function(i){t.addOp(new ui.Action.OpBondDelete(i));var s=ui.ctab.bonds.get(i);if(e.atoms.indexOf(s.begin)==-1&&ui.render.atomGetDegree(s.begin)==1){var o=ui.ctab.atoms.get(s.begin).fragment;r.indexOf(o)<0&&r.push(o),t.removeAtomFromSgroupIfNeeded(s.begin)&&n.push(s.begin),t.addOp(new ui.Action.OpAtomDelete(s.begin))}if(e.atoms.indexOf(s.end)==-1&&ui.render.atomGetDegree(s.end)==1){var u=ui.ctab.atoms.get(s.end).fragment;r.indexOf(u)<0&&r.push(u),t.removeAtomFromSgroupIfNeeded(s.end)&&n.push(s.end),t.addOp(new ui.Action.OpAtomDelete(s.end))}},this),e.atoms.each(function(e){var i=ui.ctab.atoms.get(e).fragment;r.indexOf(i)<0&&r.push(i),t.removeAtomFromSgroupIfNeeded(e)&&n.push(e),t.addOp(new ui.Action.OpAtomDelete(e))},this),t.removeSgroupIfNeeded(n),e.rxnArrows.each(function(e){t.addOp(new ui.Action.OpRxnArrowDelete(e))},this),e.rxnPluses.each(function(e){t.addOp(new ui.Action.OpRxnPlusDelete(e))},this),e.chiralFlags.each(function(e){t.addOp(new ui.Action.OpChiralFlagDelete(e))},this),t=t.perform();while(r.length>0)t.mergeWith(new ui.Action.__fromFragmentSplit(r.pop()));return t.mergeWith(i),t},ui.Action.fromAtomMerge=function(e,t){var n=new ui.Action,r=ui.render.atomGetAttr(e,"fragment"),i=ui.render.atomGetAttr(t,"fragment");r!=i&&ui.Action.mergeFragments(n,r,i);var s=new ui.Action;ui.render.atomGetNeighbors(e).each(function(e){var n=ui.ctab.bonds.get(e.bid),r,i;n.begin==e.aid?(r=e.aid,i=t):(r=t,i=e.aid),t!=n.begin&&t!=n.end&&ui.ctab.findBondId(r,i)==-1&&s.addOp(new ui.Action.OpBondAdd(r,i,n)),s.addOp(new ui.Action.OpBondDelete(e.bid))},this);var o=chem.Struct.Atom.getAttrHash(ui.ctab.atoms.get(e));ui.render.atomGetDegree(e)==1&&o.get("label")=="*"&&o.set("label","C"),o.each(function(e){s.addOp(new ui.Action.OpAtomAttr(t,e.key,e.value))},this);var u=s.removeAtomFromSgroupIfNeeded(e);return s.addOp(new ui.Action.OpAtomDelete(e)),u&&s.removeSgroupIfNeeded([e]),s.perform().mergeWith(n)},ui.Action.toBondFlipping=function(e){var t=ui.ctab.bonds.get(e),n=new ui.Action;return n.addOp(new ui.Action.OpBondDelete(e)),n.addOp(new ui.Action.OpBondAdd(t.end,t.begin,t)).data.bid=e,n},ui.Action.fromBondFlipping=function(e){return ui.Action.toBondFlipping(e).perform()},ui.Action.fromPatternOnCanvas=function(e,t){var n=2*Math.PI/t.length,r=1/(2*Math.sin(n/2)),i=new util.Vec2(0,-r),s=new ui.Action,o=(new ui.Action.OpFragmentAdd).perform(ui.editor);t.each(function(){s.addOp((new ui.Action.OpAtomAdd({label:"C",fragment:o.frid},util.Vec2.sum(e,i))).perform(ui.editor)),i=i.rotate(n)},this);for(var u=0,a=s.operations.length;u<a;u++)s.addOp((new ui.Action.OpBondAdd(s.operations[u].data.aid,s.operations[(u+1)%t.length].data.aid,{type:t[u]})).perform(ui.editor));return s.operations.reverse(),s.addOp(o),s},ui.Action.fromChain=function(e,t,n,r){var i=Math.PI/6,s=Math.cos(i),o=Math.sin(i),u=new ui.Action,a;r!=null?a=ui.render.atomGetAttr(r,"fragment"):a=u.addOp((new ui.Action.OpFragmentAdd).perform(ui.editor)).frid;var f=-1;return r!=null?f=r:f=u.addOp((new ui.Action.OpAtomAdd({label:"C",fragment:a},e)).perform(ui.editor)).data.aid,n.times(function(n){var r=(new util.Vec2(s*(n+1),n&1?0:o)).rotate(t).add(e),i=ui.render.findClosestAtom(r,.1),l=-1;i==null?l=u.addOp((new ui.Action.OpAtomAdd({label:"C",fragment:a},r)).perform(ui.editor)).data.aid:l=i.id;if(!ui.render.checkBondExists(f,l)){u.addOp((new ui.Action.OpBondAdd(f,l,{})).perform(ui.editor));var c=ui.render.atomGetAttr(l,"fragment");ui.Action.mergeFragments(u,a,c)}f=l},this),u.operations.reverse(),u},ui.Action.fromPatternOnAtom=function(e,t){if(ui.render.atomGetDegree(e)!=1){var n=ui.atomForNewBond(e);n.fragment=ui.render.atomGetAttr(e,"fragment");var r=ui.Action.fromBondAddition({type:1},e,n.atom,n.pos),i=ui.Action.fromPatternOnElement(r[2],t,!0);return i.mergeWith(r[0]),i}return ui.Action.fromPatternOnElement(e,t,!0)},ui.Action.fromPatternOnElement=function(e,t,n){var r=(t.length-2)*Math.PI/(2*t.length),i=0,s=null,o=null;if(n){var u=ui.render.atomGetNeighbors(e)[0].aid,a=ui.render.atomGetPos(e);s=util.Vec2.diff(a,ui.render.atomGetPos(u)),s.normalize(),s=s.scaled(.5/Math.cos(r)),o=s.negated(),s.add_(a),r=Math.PI-2*r}else{var f=ui.ctab.bonds.get(e),l=ui.render.atomGetPos(f.begin),c=ui.render.atomGetPos(f.end);o=util.Vec2.diff(c,l);var h=o.length()/(2*Math.cos(r));o=o.scaled(h/o.length());var p=o.rotate(-r);o=o.rotate(r),s=util.Vec2.sum(l,o);var d=util.Vec2.sum(l,p),v=0,m=0,g=0,y=0;ui.ctab.atoms.each(function(e){util.Vec2.dist(s,ui.render.atomGetPos(e))<h*1.1?(v++,m+=ui.render.atomGetDegree(e)):util.Vec2.dist(d,ui.render.atomGetPos(e))<h*1.1&&(g++,y+=ui.render.atomGetDegree(e))}),r=Math.PI-2*r,v>g||v==g&&m>y?(s=d,o=p):r=-r,o=o.negated()}var b=new ui.Action,w=new Array(t.length);n||(w[0]=f.begin,w[t.length-1]=f.end);var E=ui.render.ctab.molecule.atoms.get(n?e:ui.render.ctab.molecule.bonds.get(e).begin).fragment;(t.length-(n?0:1)).times(function(e){if(e>0||n){var t=util.Vec2.sum(s,o),i=ui.render.findClosestAtom(t,.1);i==null?w[e]=b.addOp((new ui.Action.OpAtomAdd({label:"C",fragment:E},t)).perform(ui.editor)).data.aid:w[e]=i.id}o=o.rotate(r)},this);var S=0;return t.length.times(function(e){var n=w[e],r=w[(e+1)%t.length],s=t[(i+e)%t.length];if(!ui.render.checkBondExists(n,r))b.addOp((new ui.Action.OpBondAdd(n,r,{type:s})).perform(ui.editor));else if(s==chem.Struct.BOND.TYPE.AROMATIC){var o=ui.render.atomGetNeighbors(n);o.find(function(e){if(e.aid==r){var t=ui.render.bondGetAttr(e.bid,"type");return t!=s,!0}return!1},this)}S++},this),b.operations.reverse(),b},ui.Action.fromNewCanvas=function(e){var t=new ui.Action;return t.addOp(new ui.Action.OpCanvasLoad(e)),t.perform()},ui.Action.fromSgroupType=function(e,t){var n=ui.render,r=n.sGroupGetType(e);if(t&&t!=r){var i=util.array(n.sGroupGetAtoms(e)),s=n.sGroupGetAttrs(e),o=ui.Action.fromSgroupDeletion(e),u=ui.Action.fromSgroupAddition(t,i,s,e);return u.mergeWith(o)}return new ui.Action},ui.Action.fromSgroupAttrs=function(e,t){var n=new ui.Action,r=ui.render,i=r.ctab,s=i.sgroups.get(e).item;return(new Hash(t)).each(function(t){s.checkAttr(t.key,t.value)||n.addOp(new ui.Action.OpSGroupAttr(e,t.key,t.value))},this),n.perform()},ui.Action.sGroupAttributeAction=function(e,t){var n=new ui.Action;return(new Hash(t)).each(function(t){n.addOp(new ui.Action.OpSGroupAttr(e,t.key,t.value))},this),n},ui.Action.fromSgroupDeletion=function(e){var t=new ui.Action,n=ui.render,r=n.ctab,i=r.molecule;if(ui.render.sGroupGetType(e)=="SRU"){ui.render.sGroupsFindCrossBonds();var s=ui.render.sGroupGetNeighborAtoms(e);s.each(function(e){ui.render.atomGetAttr(e,"label")=="*"&&t.addOp(new ui.Action.OpAtomAttr(e,"label","C"))},this)}var o=i.sgroups.get(e),u=chem.SGroup.getAtoms(i,o),a=o.getAttrs();for(var f=0;f<u.length;++f)t.addOp(new ui.Action.OpSGroupAtomRemove(e,u[f]));return t.addOp(new ui.Action.OpSGroupDelete(e)),t=t.perform(),t.mergeWith(ui.Action.sGroupAttributeAction(e,a)),t},ui.Action.fromSgroupAddition=function(e,t,n,r){var i=new ui.Action,s;r=r-0===r?r:ui.render.ctab.molecule.sgroups.newId(),i.addOp(new ui.Action.OpSGroupCreate(r,e));for(s=0;s<t.length;s++)i.addOp(new ui.Action.OpSGroupAtomAdd(r,t[s]));i=i.perform();if(e=="SRU"){ui.render.sGroupsFindCrossBonds();var o=ui.render.sGroupGetNeighborAtoms(r),u=new ui.Action;o.each(function(e){ui.render.atomGetDegree(e)==1&&ui.render.atomIsPlainCarbon(e)&&u.addOp(new ui.Action.OpAtomAttr(e,"label","C"))},this),u=u.perform(),u.mergeWith(i),i=u}return ui.Action.fromSgroupAttrs(r,n).mergeWith(i)},ui.Action.fromRGroupAttrs=function(e,t){var n=new ui.Action;return(new Hash(t)).each(function(t){n.addOp(new ui.Action.OpRGroupAttr(e,t.key,t.value))},this),n.perform()},ui.Action.fromRGroupFragment=function(e,t){var n=new ui.Action;return n.addOp(new ui.Action.OpRGroupFragment(e,t)),n.perform()},ui.Action.fromPaste=function(e,t){t=t||new util.Vec2;var n=new ui.Action,r={},i={};for(var s=0;s<e.atoms.length;s++){var o=Object.clone(e.atoms[s]);o.fragment in i||(i[o.fragment]=n.addOp((new ui.Action.OpFragmentAdd).perform(ui.editor)).frid),o.fragment=i[o.fragment],r[s]=n.addOp((new ui.Action.OpAtomAdd(o,o.pp.add(t))).perform(ui.editor)).data.aid}var u=[];for(var a in ui.clipboard.rgroups)ui.ctab.rgroups.has(a)||u.push(a);for(var f in ui.clipboard.rgmap)n.addOp((new ui.Action.OpRGroupFragment(ui.clipboard.rgmap[f],i[f])).perform(ui.editor));for(var l=0;l<u.length;++l)n.mergeWith(ui.Action.fromRGroupAttrs(u[l],ui.clipboard.rgroups[u[l]]));for(var c=0;c<e.bonds.length;c++){var h=Object.clone(e.bonds[c]);n.addOp((new ui.Action.OpBondAdd(r[h.begin],r[h.end],h)).perform(ui.editor))}for(var p=0;p<e.sgroups.length;p++){var d=e.sgroups[p],v=d.atoms,m=[];for(var g=0;g<v.length;g++)m.push(r[v[g]]);var y=ui.render.ctab.molecule.sgroups.newId(),b=ui.Action.fromSgroupAddition(d.type,m,d.attrs,y);for(var w=b.operations.length-1;w>=0;w--)n.addOp(b.operations[w])}if(ui.editor.render.ctab.rxnArrows.count()<1)for(var E=0;E<e.rxnArrows.length;E++)n.addOp((new ui.Action.OpRxnArrowAdd(e.rxnArrows[E].pp.add(t))).perform(ui.editor));for(var S=0;S<e.rxnPluses.length;S++)n.addOp((new ui.Action.OpRxnPlusAdd(e.rxnPluses[S].pp.add(t))).perform(ui.editor));return n.operations.reverse(),n},ui.addUndoAction=function(e,t){if(e==null)return;if(t!=1||!e.isDummy())ui.undoStack.push(e),ui.redoStack.clear(),ui.undoStack.length>ui.HISTORY_LENGTH&&ui.undoStack.splice(0,1),ui.updateActionButtons()},ui.removeDummyAction=function(){ui.undoStack.length!=0&&ui.undoStack.last().isDummy()&&(ui.undoStack.pop(),ui.updateActionButtons())},ui.updateActionButtons=function(){ui.undoStack.length==0?$("undo").addClassName("buttonDisabled"):$("undo").removeClassName("buttonDisabled"),ui.redoStack.length==0?$("redo").addClassName("buttonDisabled"):$("redo").removeClassName("buttonDisabled")},ui.undo=function(){this.render.current_tool&&this.render.current_tool.OnCancel(),ui.redoStack.push(ui.undoStack.pop().perform()),ui.updateActionButtons(),ui.updateSelection()},ui.redo=function(){this.render.current_tool&&this.render.current_tool.OnCancel(),ui.undoStack.push(ui.redoStack.pop().perform()),ui.updateActionButtons(),ui.updateSelection()},ui.Action.OpBase=function(){},ui.Action.OpBase.prototype.type="OpBase",ui.Action.OpBase.prototype._execute=function(){throw new Error("Operation._execute() is not implemented")},ui.Action.OpBase.prototype._invert=function(){throw new Error("Operation._invert() is not implemented")},ui.Action.OpBase.prototype.perform=function(e){return this._execute(e),"__inverted"in this||(this.__inverted=this._invert(),this.__inverted.__inverted=this),this.__inverted},ui.Action.OpBase.prototype.isDummy=function(e){return"_isDummy"in this?this._isDummy(e):!1},ui.Action.OpAtomAdd=function(e,t){this.data={aid:null,atom:e,pos:t},this._execute=function(e){var t=e.render,n=t.ctab,r=n.molecule,i={};if(this.data.atom)for(var s in this.data.atom)i[s]=this.data.atom[s];i.label=i.label||"C",Object.isNumber(this.data.aid)?r.atoms.set(this.data.aid,new chem.Struct.Atom(i)):this.data.aid=r.atoms.add(new chem.Struct.Atom(i)),n.notifyAtomAdded(this.data.aid),r._atomSetPos(this.data.aid,new util.Vec2(this.data.pos))},this._invert=function(){var e=new ui.Action.OpAtomDelete;return e.data=this.data,e}},ui.Action.OpAtomAdd.prototype=new ui.Action.OpBase,ui.Action.OpAtomDelete=function(e){this.data={aid:e,atom:null,pos:null},this._execute=function(e){var t=e.render,n=t.ctab,r=n.molecule;this.data.atom||(this.data.atom=r.atoms.get(this.data.aid),this.data.pos=t.atomGetPos(this.data.aid)),n.notifyAtomRemoved(this.data.aid),r.atoms.remove(this.data.aid)},this._invert=function(){var e=new ui.Action.OpAtomAdd;return e.data=this.data,e}},ui.Action.OpAtomDelete.prototype=new ui.Action.OpBase,ui.Action.OpAtomAttr=function(e,t,n){this.data={aid:e,attribute:t,value:n},this.data2=null,this._execute=function(e){var t=e.render.ctab.molecule.atoms.get(this.data.aid);this.data2||(this.data2={aid:this.data.aid,attribute:this.data.attribute,value:t[this.data.attribute]}),this.data.attribute=="label"&&this.data.value!=null&&(t.atomList=null),t[this.data.attribute]=this.data.value,e.render.invalidateAtom(this.data.aid)},this._isDummy=function(e){return e.render.ctab.molecule.atoms.get(this.data.aid)[this.data.attribute]==this.data.value},this._invert=function(){var e=new ui.Action.OpAtomAttr;return e.data=this.data2,e.data2=this.data,e}},ui.Action.OpAtomAttr.prototype=new ui.Action.OpBase,ui.Action.OpAtomMove=function(e,t){this.data={aid:e,d:t},this._execute=function(e){ui.ctab.atoms.get(this.data.aid).pp.add_(this.data.d),this.data.d=this.data.d.negated(),e.render.invalidateAtom(this.data.aid,1)},this._invert=function(){var e=new ui.Action.OpAtomMove;return e.data=this.data,e}},ui.Action.OpAtomMove.prototype=new ui.Action.OpBase,ui.Action.OpSGroupAtomAdd=function(e,t){this.type="OpSGroupAtomAdd",this.data={aid:t,sgid:e},this._execute=function(e){var t=e.render,n=t.ctab,r=n.molecule,i=this.data.aid,s=this.data.sgid,o=r.atoms.get(i),u=r.sgroups.get(s);chem.SGroup.addAtom(u,i);if(!o)throw new Error("OpSGroupAtomAdd: Atom "+i+" not found");util.Set.add(o.sgs,s),t.invalidateAtom(i)},this._invert=function(){var e=new ui.Action.OpSGroupAtomRemove;return e.data=this.data,e}},ui.Action.OpSGroupAtomAdd.prototype=new ui.Action.OpBase,ui.Action.OpSGroupAtomRemove=function(e,t){this.type="OpSGroupAtomRemove",this.data={aid:t,sgid:e},this._execute=function(e){var t=this.data.aid,n=this.data.sgid,r=e.render,i=r.ctab,s=i.molecule,o=s.atoms.get(t),u=s.sgroups.get(n);chem.SGroup.removeAtom(u,t),util.Set.remove(o.sgs,n),r.invalidateAtom(t)},this._invert=function(){var e=new ui.Action.OpSGroupAtomAdd;return e.data=this.data,e}},ui.Action.OpSGroupAtomRemove.prototype=new ui.Action.OpBase,ui.Action.OpSGroupAttr=function(e,t,n){this.type="OpSGroupAttr",this.data={sgid:e,attr:t,value:n},this._execute=function(e){var t=e.render,n=t.ctab,r=n.molecule,i=this.data.sgid,s=r.sgroups.get(i);s.type=="DAT"&&n.sgroupData.has(i)&&(n.clearVisel(n.sgroupData.get(i).visel),n.sgroupData.unset(i)),this.data.value=s.setAttr(this.data.attr,this.data.value)},this._invert=function(){var e=new ui.Action.OpSGroupAttr;return e.data=this.data,e}},ui.Action.OpSGroupAttr.prototype=new ui.Action.OpBase,ui.Action.OpSGroupCreate=function(e,t){this.type="OpSGroupCreate",this.data={sgid:e,type:t},this._execute=function(e){var t=e.render,n=t.ctab,r=n.molecule,i=new chem.SGroup(this.data.type),s=this.data.sgid;i.id=s,r.sgroups.set(s,i),n.sgroups.set(s,new rnd.ReSGroup(r.sgroups.get(s))),this.data.sgid=s},this._invert=function(){var e=new ui.Action.OpSGroupDelete;return e.data=this.data,e}},ui.Action.OpSGroupCreate.prototype=new ui.Action.OpBase,ui.Action.OpSGroupDelete=function(e){this.type="OpSGroupDelete",this.data={sgid:e},this._execute=function(e){var t=e.render,n=t.ctab,r=n.molecule,i=this.data.sgid,s=n.sgroups.get(i);this.data.type=s.item.type,s.item.type=="DAT"&&n.sgroupData.has(i)&&(n.clearVisel(n.sgroupData.get(i).visel),n.sgroupData.unset(i)),n.clearVisel(s.visel);if(s.item.atoms.length!=0)throw new Error("S-Group not empty!");n.sgroups.unset(i),r.sgroups.remove(i)},this._invert=function(){var e=new ui.Action.OpSGroupCreate;return e.data=this.data,e}},ui.Action.OpSGroupDelete.prototype=new ui.Action.OpBase,ui.Action.OpBondAdd=function(e,t,n){this.data={bid:null,bond:n,begin:e,end:t},this._execute=function(e){var t=e.render,n=t.ctab,r=n.molecule;if(this.data.begin==this.data.end)throw new Error("Distinct atoms expected");if(rnd.DEBUG&&this.molecule.checkBondExists(this.data.begin,this.data.end))throw new Error("Bond already exists");t.invalidateAtom(this.data.begin,1),t.invalidateAtom(this.data.end,1);var i={};if(this.data.bond)for(var s in this.data.bond)i[s]=this.data.bond[s];i.type=i.type||chem.Struct.BOND.TYPE.SINGLE,i.begin=this.data.begin,i.end=this.data.end,Object.isNumber(this.data.bid)?r.bonds.set(this.data.bid,new chem.Struct.Bond(i)):this.data.bid=r.bonds.add(new chem.Struct.Bond(i)),r.bondInitHalfBonds(this.data.bid),r.atomAddNeighbor(r.bonds.get(this.data.bid).hb1),r.atomAddNeighbor(r.bonds.get(this.data.bid).hb2),n.notifyBondAdded(this.data.bid)},this._invert=function(){var e=new ui.Action.OpBondDelete;return e.data=this.data,e}},ui.Action.OpBondAdd.prototype=new ui.Action.OpBase,ui.Action.OpBondDelete=function(e){this.data={bid:e,bond:null,begin:null,end:null},this._execute=function(e){var t=e.render,n=t.ctab,r=n.molecule;this.data.bond||(this.data.bond=r.bonds.get(this.data.bid),this.data.begin=this.data.bond.begin,this.data.end=this.data.bond.end),t.invalidateBond(this.data.bid),n.notifyBondRemoved(this.data.bid);var i=r.bonds.get(this.data.bid);[i.hb1,i.hb2].each(function(e){var t=r.halfBonds.get(e),n=r.atoms.get(t.begin),i=n.neighbors.indexOf(e),s=(i+n.neighbors.length-1)%n.neighbors.length,o=(i+1)%n.neighbors.length;r.setHbNext(n.neighbors[s],n.neighbors[o]),n.neighbors.splice(i,1)},this),r.halfBonds.unset(i.hb1),r.halfBonds.unset(i.hb2),r.bonds.remove(this.data.bid)},this._invert=function(){var e=new ui.Action.OpBondAdd;return e.data=this.data,e}},ui.Action.OpBondDelete.prototype=new ui.Action.OpBase,ui.Action.OpBondAttr=function(e,t,n){this.data={bid:e,attribute:t,value:n},this.data2=null,this._execute=function(e){var t=e.render.ctab.molecule.bonds.get(this.data.bid);this.data2||(this.data2={bid:this.data.bid,attribute:this.data.attribute,value:t[this.data.attribute]}),t[this.data.attribute]=this.data.value,e.render.invalidateBond(this.data.bid,this.data.attribute=="type"?1:0)},this._isDummy=function(e){return e.render.ctab.molecule.bonds.get(this.data.bid)[this.data.attribute]==this.data.value},this._invert=function(){var e=new ui.Action.OpBondAttr;return e.data=this.data2,e.data2=this.data,e}},ui.Action.OpBondAttr.prototype=new ui.Action.OpBase,ui.Action.OpFragmentAdd=function(e){this.frid=Object.isUndefined(e)?null:e,this._execute=function(e){var t=e.render.ctab,n=t.molecule,r=new chem.Struct.Fragment;this.frid==null?this.frid=n.frags.add(r):n.frags.set(this.frid,r),t.frags.set(this.frid,new rnd.ReFrag(r))},this._invert=function(){return new ui.Action.OpFragmentDelete(this.frid)}},ui.Action.OpFragmentAdd.prototype=new ui.Action.OpBase,ui.Action.OpFragmentDelete=function(e){this.frid=e,this._execute=function(e){var t=e.render,n=t.ctab,r=n.molecule;t.invalidateItem("frags",this.frid,1),n.frags.unset(this.frid),r.frags.remove(this.frid)},this._invert=function(){return new ui.Action.OpFragmentAdd(this.frid)}},ui.Action.OpFragmentDelete.prototype=new ui.Action.OpBase,ui.Action.OpRGroupAttr=function(e,t,n){this.data={rgid:e,attribute:t,value:n},this.data2=null,this._execute=function(e){var t=e.render.ctab.molecule.rgroups.get(this.data.rgid);this.data2||(this.data2={rgid:this.data.rgid,attribute:this.data.attribute,value:t[this.data.attribute]}),t[this.data.attribute]=this.data.value,e.render.invalidateItem("rgroups",this.data.rgid)},this._isDummy=function(e){return e.render.ctab.molecule.rgroups.get(this.data.rgid)[this.data.attribute]==this.data.value},this._invert=function(){var e=new ui.Action.OpRGroupAttr;return e.data=this.data2,e.data2=this.data,e}},ui.Action.OpRGroupAttr.prototype=new ui.Action.OpBase,ui.Action.OpRGroupFragment=function(e,t){this.rgid_new=e,this.rgid_old=null,this.frid=t,this._execute=function(e){var t=e.render.ctab,n=t.molecule;this.rgid_old=this.rgid_old||chem.Struct.RGroup.findRGroupByFragment(n.rgroups,this.frid);var r=this.rgid_old?n.rgroups.get(this.rgid_old):null;r&&(r.frags.remove(r.frags.keyOf(this.frid)),t.clearVisel(t.rgroups.get(this.rgid_old).visel),r.frags.count()==0?(t.rgroups.unset(this.rgid_old),n.rgroups.unset(this.rgid_old),t.markItemRemoved()):t.markItem("rgroups",this.rgid_old,1));if(this.rgid_new){var i=n.rgroups.get(this.rgid_new);i?t.markItem("rgroups",this.rgid_new,1):(i=new chem.Struct.RGroup,n.rgroups.set(this.rgid_new,i),t.rgroups.set(this.rgid_new,new rnd.ReRGroup(i))),i.frags.add(this.frid)}},this._invert=function(){return new ui.Action.OpRGroupFragment(this.rgid_old,this.frid)}},ui.Action.OpRGroupFragment.prototype=new ui.Action.OpBase,ui.Action.OpRxnArrowAdd=function(e){this.data={arid:null,pos:e},this._execute=function(e){var t=e.render,n=t.ctab,r=n.molecule;Object.isNumber(this.data.arid)?r.rxnArrows.set(this.data.arid,new chem.Struct.RxnArrow):this.data.arid=r.rxnArrows.add(new chem.Struct.RxnArrow),n.notifyRxnArrowAdded(this.data.arid),r._rxnArrowSetPos(this.data.arid,new util.Vec2(this.data.pos)),t.invalidateItem("rxnArrows",this.data.arid,1)},this._invert=function(){var e=new ui.Action.OpRxnArrowDelete;return e.data=this.data,e}},ui.Action.OpRxnArrowAdd.prototype=new ui.Action.OpBase,ui.Action.OpRxnArrowDelete=function(e){this.data={arid:e,pos:null},this._execute=function(e){var t=e.render,n=t.ctab,r=n.molecule;this.data.pos||(this.data.pos=t.rxnArrowGetPos(this.data.arid)),n.notifyRxnArrowRemoved(this.data.arid),r.rxnArrows.remove(this.data.arid)},this._invert=function(){var e=new ui.Action.OpRxnArrowAdd;return e.data=this.data,e}},ui.Action.OpRxnArrowDelete.prototype=new ui.Action.OpBase,ui.Action.OpRxnArrowMove=function(e,t){this.data={id:e,d:t},this._execute=function(e){ui.ctab.rxnArrows.get(this.data.id).pp.add_(this.data.d),this.data.d=this.data.d.negated(),e.render.invalidateItem("rxnArrows",this.data.id,1)},this._invert=function(){var e=new ui.Action.OpRxnArrowMove;return e.data=this.data,e}},ui.Action.OpRxnArrowMove.prototype=new ui.Action.OpBase,ui.Action.OpRxnPlusAdd=function(e){this.data={plid:null,pos:e},this._execute=function(e){var t=e.render,n=t.ctab,r=n.molecule;Object.isNumber(this.data.plid)?r.rxnPluses.set(this.data.plid,new chem.Struct.RxnPlus):this.data.plid=r.rxnPluses.add(new chem.Struct.RxnPlus),n.notifyRxnPlusAdded(this.data.plid),r._rxnPlusSetPos(this.data.plid,new util.Vec2(this.data.pos)),t.invalidateItem("rxnPluses",this.data.plid,1)},this._invert=function(){var e=new ui.Action.OpRxnPlusDelete;return e.data=this.data,e}},ui.Action.OpRxnPlusAdd.prototype=new ui.Action.OpBase,ui.Action.OpRxnPlusDelete=function(e){this.data={plid:e,pos:null},this._execute=function(e){var t=e.render,n=t.ctab,r=n.molecule;this.data.pos||(this.data.pos=t.rxnPlusGetPos(this.data.plid)),n.notifyRxnPlusRemoved(this.data.plid),r.rxnPluses.remove(this.data.plid)},this._invert=function(){var e=new ui.Action.OpRxnPlusAdd;return e.data=this.data,e}},ui.Action.OpRxnPlusDelete.prototype=new ui.Action.OpBase,ui.Action.OpRxnPlusMove=function(e,t){this.data={id:e,d:t},this._execute=function(e){ui.ctab.rxnPluses.get(this.data.id).pp.add_(this.data.d),this.data.d=this.data.d.negated(),e.render.invalidateItem("rxnPluses",this.data.id,1)},this._invert=function(){var e=new ui.Action.OpRxnPlusMove;return e.data=this.data,e}},ui.Action.OpRxnPlusMove.prototype=new ui.Action.OpBase,ui.Action.OpSGroupDataMove=function(e,t){this.data={id:e,d:t},this._execute=function(e){ui.ctab.sgroups.get(this.data.id).pp.add_(this.data.d),this.data.d=this.data.d.negated(),e.render.invalidateItem("sgroupData",this.data.id,1)},this._invert=function(){var e=new ui.Action.OpSGroupDataMove;return e.data=this.data,e}},ui.Action.OpSGroupDataMove.prototype=new ui.Action.OpBase,ui.Action.OpCanvasLoad=function(e){this.data={ctab:e,norescale:!1},this._execute=function(e){var t=e.render;t.ctab.clearVisels();var n=ui.ctab;ui.ctab=this.data.ctab,t.setMolecule(ui.ctab,this.data.norescale),this.data.ctab=n,this.data.norescale=!0},this._invert=function(){var e=new ui.Action.OpCanvasLoad;return e.data=this.data,e}},ui.Action.OpCanvasLoad.prototype=new ui.Action.OpBase,ui.Action.OpChiralFlagAdd=function(e){this.data={pos:e},this._execute=function(t){var n=t.render,r=n.ctab,i=r.molecule;if(r.chiralFlags.count()>0)throw new Error("Cannot add more than one Chiral flag");r.chiralFlags.set(0,new rnd.ReChiralFlag(e)),i.isChiral=!0,n.invalidateItem("chiralFlags",0,1)},this._invert=function(){var e=new ui.Action.OpChiralFlagDelete;return e.data=this.data,e}},ui.Action.OpChiralFlagAdd.prototype=new ui.Action.OpBase,ui.Action.OpChiralFlagDelete=function(){this.data={pos:null},this._execute=function(e){var t=e.render,n=t.ctab,r=n.molecule;if(n.chiralFlags.count()<1)throw new Error("Cannot remove chiral flag");n.clearVisel(n.chiralFlags.get(0).visel),this.data.pos=n.chiralFlags.get(0).pp,n.chiralFlags.unset(0),r.isChiral=!1},this._invert=function(){var e=new ui.Action.OpChiralFlagAdd(this.data.pos
);return e.data=this.data,e}},ui.Action.OpChiralFlagDelete.prototype=new ui.Action.OpBase,ui.Action.OpChiralFlagMove=function(e){this.data={d:e},this._execute=function(e){var t=e.render,n=t.ctab;n.chiralFlags.get(0).pp.add_(this.data.d),this.data.d=this.data.d.negated(),t.invalidateItem("chiralFlags",0,1)},this._invert=function(){var e=new ui.Action.OpChiralFlagMove;return e.data=this.data,e}},ui.Action.OpChiralFlagMove.prototype=new ui.Action.OpBase;