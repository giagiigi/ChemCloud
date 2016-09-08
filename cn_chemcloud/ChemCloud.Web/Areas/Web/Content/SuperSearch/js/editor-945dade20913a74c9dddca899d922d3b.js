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
if(!window.Prototype)throw new Error("Prototype.js should be loaded first");if(!window.rnd||!rnd.ReStruct)throw new Error("rnd.MolData should be defined prior to loading this file");rnd.Editor=function(e){this.ui=ui,this.render=e,this._selectionHelper=new rnd.Editor.SelectionHelper(this)},rnd.Editor.prototype.selectAll=function(){var e={};for(var t in rnd.ReStruct.maps)e[t]=ui.render.ctab[t].ikeys();this._selectionHelper.setSelection(e)},rnd.Editor.prototype.deselectAll=function(){this._selectionHelper.setSelection()},rnd.Editor.prototype.toolFor=function(e){return e=="selector_lasso"?new rnd.Editor.LassoTool(this,0):e=="selector_square"?new rnd.Editor.LassoTool(this,1):e=="selector_fragment"?new rnd.Editor.LassoTool(this,1,!0):e=="select_erase"?new rnd.Editor.EraserTool(this,1):e.startsWith("atom_")?new rnd.Editor.AtomTool(this,ui.atomLabel(e)):e.startsWith("bond_")?new rnd.Editor.BondTool(this,ui.bondType(e)):e=="chain"?new rnd.Editor.ChainTool(this):e.startsWith("template_")?new rnd.Editor.TemplateTool(this,parseInt(e.split("_")[1])):e=="charge_plus"?new rnd.Editor.ChargeTool(this,1):e=="charge_minus"?new rnd.Editor.ChargeTool(this,-1):e=="sgroup"?new rnd.Editor.SGroupTool(this):e=="paste"?new rnd.Editor.PasteTool(this):e=="reaction_arrow"?new rnd.Editor.ReactionArrowTool(this):e=="reaction_plus"?new rnd.Editor.ReactionPlusTool(this):e=="reaction_map"?new rnd.Editor.ReactionMapTool(this):e=="reaction_unmap"?new rnd.Editor.ReactionUnmapTool(this):e=="rgroup_label"?new rnd.Editor.RGroupAtomTool(this):e=="rgroup_fragment"?new rnd.Editor.RGroupFragmentTool(this):e=="rgroup_attpoints"?new rnd.Editor.APointTool(this):null},rnd.Editor.SelectionHelper=function(e){this.editor=e},rnd.Editor.SelectionHelper.prototype.setSelection=function(e,t){if(!("selection"in this)||!t){this.selection={};for(var n in rnd.ReStruct.maps)this.selection[n]=[]}e&&"id"in e&&"map"in e&&(e[e.map]=e[e.map]||[]).push(e.id);if(e)for(var r in this.selection)if(r in e)for(var i=0;i<e[r].length;i++)this.selection[r].indexOf(e[r][i])<0&&this.selection[r].push(e[r][i]);Object.isUndefined(this.selection.bonds)||this.selection.bonds.each(function(t){var n=this.editor.render.ctab.molecule.bonds.get(t);e.atoms=e.atoms||[],this.selection.atoms.indexOf(n.begin)<0&&this.selection.atoms.push(n.begin),this.selection.atoms.indexOf(n.end)<0&&this.selection.atoms.push(n.end)},this),"atoms"in this.selection&&this.editor.render.ctab.molecule.bonds.each(function(e){if(!("bonds"in this.selection)||this.selection.bonds.indexOf(e)<0){var t=this.editor.render.ctab.molecule.bonds.get(e);this.selection.atoms.indexOf(t.begin)>=0&&this.selection.atoms.indexOf(t.end)>=0&&(this.selection.bonds=this.selection.bonds||[],this.selection.bonds.push(e))}},this),this.editor.render.setSelection(this.selection),this.editor.render.update(),ui.updateSelection(this.selection,!0),ui.updateClipboardButtons()},rnd.Editor.SelectionHelper.prototype.isSelected=function(e){return"selection"in this&&!Object.isUndefined(this.selection[e.map])&&this.selection[e.map].indexOf(e.id)>-1},rnd.Editor.EditorTool=function(e){this.editor=e},rnd.Editor.EditorTool.prototype.processEvent=function(e,t){if("touches"in t&&t.touches.length!=1){if("lastEvent"in this.OnMouseDown0)return this.OnMouseUp0(t)}else{if(e+"0"in this)return this[e+"0"](t);if(e in this)return this[e](t);console.log("EditorTool.dispatchEvent: event '"+e+"' is not handled.")}},rnd.Editor.EditorTool.prototype.OnMouseOver=function(){},rnd.Editor.EditorTool.prototype.OnMouseDown=function(){},rnd.Editor.EditorTool.prototype.OnMouseMove=function(){},rnd.Editor.EditorTool.prototype.OnMouseUp=function(){},rnd.Editor.EditorTool.prototype.OnClick=function(){},rnd.Editor.EditorTool.prototype.OnDblClick=function(){},rnd.Editor.EditorTool.prototype.OnMouseOut=function(){},rnd.Editor.EditorTool.prototype.OnKeyPress=function(){},rnd.Editor.EditorTool.prototype.OnCancel=function(){},rnd.Editor.EditorTool.prototype.OnMouseDown0=function(e){if(this.editor.ui.hideBlurredControls())return!0;this.OnMouseDown0.lastEvent=e,this.OnMouseMove0.lastEvent=e;if("OnMouseDown"in this)return this.OnMouseDown(e)},rnd.Editor.EditorTool.prototype.OnMouseMove0=function(e){this.OnMouseMove0.lastEvent=e;if("OnMouseMove"in this)return this.OnMouseMove(e)},rnd.Editor.EditorTool.prototype.OnMouseUp0=function(e){if(!("lastEvent"in this.OnMouseDown0))return!0;"lastEvent"in this.OnMouseMove0&&(e=Object.clone(e),e.pageX=this.OnMouseMove0.lastEvent.pageX,e.pageY=this.OnMouseMove0.lastEvent.pageY);try{if("OnMouseUp"in this)return this.OnMouseUp(e)}finally{delete this.OnMouseDown0.lastEvent}},rnd.Editor.EditorTool.prototype.OnKeyPress0=function(e){if(!(e.metaKey&&ui.is_osx||e.ctrlKey&&!ui.is_osx)&&!e.altKey&&"lastEvent"in this.OnMouseMove0){if(114==(Prototype.Browser.IE?e.keyCode:e.which))return rnd.Editor.RGroupAtomTool.prototype.OnMouseUp.call(this,this.OnMouseMove0.lastEvent);var t=this.editor.render.findItem(this.OnMouseMove0.lastEvent);if(t){var n={Br:66,Cl:67,A:97,C:99,F:102,H:104,I:105,N:110,O:111,P:112,S:115};for(var r in n)if(n[r]==(Prototype.Browser.IE?e.keyCode:e.which))return t.label={label:r},t.map=="atoms"?this.editor.ui.addUndoAction(ui.Action.fromAtomAttrs(t.id,t.label)):t.id==-1&&this.editor.ui.addUndoAction(this.editor.ui.Action.fromAtomAddition(this.editor.ui.page2obj(this.OnMouseMove0.lastEvent),t.label),!0),this.editor.ui.render.update(),!0}}return"OnKeyPress"in this?this.OnKeyPress(e):!1},rnd.Editor.EditorTool.prototype._calcAngle=function(e,t){var n=util.Vec2.diff(t,e),r=Math.atan2(n.y,n.x),i=r<0?-1:1,s=Math.floor(Math.abs(r)/(Math.PI/12))*(Math.PI/12);return r=i*(s+(Math.abs(r)-s<Math.PI/24?0:Math.PI/12)),r},rnd.Editor.EditorTool.prototype._calcNewAtomPos=function(e,t){var n=(new util.Vec2(1,0)).rotate(this._calcAngle(e,t));return n.add_(e),n},rnd.Editor.EditorTool.HoverHelper=function(e){this.editorTool=e},rnd.Editor.EditorTool.HoverHelper.prototype.hover=function(e){e&&e.type=="Canvas"&&(e=null),"ci"in this&&(!e||this.ci.type!=e.type||this.ci.id!=e.id)&&(this.editorTool.editor.render.highlightObject(this.ci,!1),delete this.ci),e&&this.editorTool.editor.render.highlightObject(e,!0)&&(this.ci=e)},rnd.Editor.LassoTool=function(e,t,n){this.editor=e,this._hoverHelper=new rnd.Editor.EditorTool.HoverHelper(this),this._lassoHelper=new rnd.Editor.LassoTool.LassoHelper(t||0,e,n),this._sGroupHelper=new rnd.Editor.SGroupTool.SGroupHelper(e)},rnd.Editor.LassoTool.prototype=new rnd.Editor.EditorTool,rnd.Editor.LassoTool.prototype.OnMouseDown=function(e){var t=this.editor.render,n=t.ctab;this._hoverHelper.hover(null);var r=this._lassoHelper.fragment||e.ctrlKey,i=this.editor.render.findItem(e,r?["frags","rxnArrows","rxnPluses","chiralFlags"]:["atoms","bonds","sgroups","sgroupData","rxnArrows","rxnPluses","chiralFlags"]);if(!i||i.type=="Canvas")this._lassoHelper.fragment||this._lassoHelper.begin(e);else{this._hoverHelper.hover(null),"onShowLoupe"in this.editor.render&&this.editor.render.onShowLoupe(!0);if(i.map=="frags"){var s=n.frags.get(i.id),o=s.fragGetAtoms(t,i.id);this.editor._selectionHelper.setSelection({atoms:o},e.shiftKey)}else this.editor._selectionHelper.isSelected(i)||this.editor._selectionHelper.setSelection(i,e.shiftKey);this.dragCtx={item:i,xy0:this.editor.ui.page2obj(e)};if(i.map=="atoms"){var u=this;this.dragCtx.timeout=setTimeout(function(){delete u.dragCtx,u.editor._selectionHelper.setSelection(null),u.editor.ui.showLabelEditor(i.id)},750),this.dragCtx.stopTapping=function(){"timeout"in u.dragCtx&&(clearTimeout(u.dragCtx.timeout),delete u.dragCtx.timeout)}}}return!0},rnd.Editor.LassoTool.prototype.OnMouseMove=function(e){if("dragCtx"in this){"stopTapping"in this.dragCtx&&this.dragCtx.stopTapping(),this.dragCtx.action&&this.dragCtx.action.perform(),this.dragCtx.action=ui.Action.fromMultipleMove(this.editor._selectionHelper.selection,this.editor.ui.page2obj(e).sub(this.dragCtx.xy0));if(["atoms"].indexOf(this.dragCtx.item.map)>=0){var t=this.editor.render.findItem(e,[this.dragCtx.item.map],this.dragCtx.item);this._hoverHelper.hover(t.map==this.dragCtx.item.map?t:null)}this.editor.render.update()}else this._lassoHelper.running()?this.editor._selectionHelper.setSelection(this._lassoHelper.addPoint(e),e.shiftKey):this._hoverHelper.hover(this.editor.render.findItem(e,this._lassoHelper.fragment||e.ctrlKey?["frags","rxnArrows","rxnPluses","chiralFlags"]:["atoms","bonds","sgroups","sgroupData","rxnArrows","rxnPluses","chiralFlags"]));return!0},rnd.Editor.LassoTool.prototype.OnMouseUp=function(e){if("dragCtx"in this){"stopTapping"in this.dragCtx&&this.dragCtx.stopTapping();if(["atoms"].indexOf(this.dragCtx.item.map)>=0){var t=this.editor.render.findItem(e,[this.dragCtx.item.map],this.dragCtx.item);t.map==this.dragCtx.item.map&&(this._hoverHelper.hover(null),this.editor._selectionHelper.setSelection(),this.dragCtx.action=this.dragCtx.action?this.editor.ui.Action.fromAtomMerge(this.dragCtx.item.id,t.id).mergeWith(this.dragCtx.action):this.editor.ui.Action.fromAtomMerge(this.dragCtx.item.id,t.id))}this.editor.ui.addUndoAction(this.dragCtx.action,!0),this.editor.render.update(),delete this.dragCtx}else this._lassoHelper.running()?this.editor._selectionHelper.setSelection(this._lassoHelper.end(e),e.shiftKey):this._lassoHelper.fragment&&this.editor._selectionHelper.setSelection();return!0},rnd.Editor.LassoTool.prototype.OnDblClick=function(e){var t=this.editor.render.findItem(e);return t.map=="atoms"?this.editor.ui.showAtomProperties(t.id):t.map=="bonds"?this.editor.ui.showBondProperties(t.id):t.map=="sgroups"&&this._sGroupHelper.showPropertiesDialog(t.id),!0},rnd.Editor.LassoTool.prototype.OnCancel=function(){"dragCtx"in this&&("stopTapping"in this.dragCtx&&this.dragCtx.stopTapping(),this.editor.ui.addUndoAction(this.dragCtx.action,!0),this.editor.render.update(),delete this.dragCtx),this.editor._selectionHelper.setSelection()},rnd.Editor.LassoTool.LassoHelper=function(e,t,n){this.mode=e,this.fragment=n,this.editor=t},rnd.Editor.LassoTool.LassoHelper.prototype.getSelection=function(){if(this.mode==0)return this.editor.ui.render.getElementsInPolygon(this.points);if(this.mode==1)return this.editor.ui.render.getElementsInRectangle(this.points[0],this.points[1]);throw new Error("Selector mode unknown")},rnd.Editor.LassoTool.LassoHelper.prototype.begin=function(e){this.points=[this.editor.ui.page2obj(e)],this.mode==1&&this.points.push(this.points[0])},rnd.Editor.LassoTool.LassoHelper.prototype.running=function(){return"points"in this},rnd.Editor.LassoTool.LassoHelper.prototype.addPoint=function(e){return this.running()?(this.mode==0?(this.points.push(this.editor.ui.page2obj(e)),this.editor.render.drawSelectionPolygon(this.points)):this.mode==1&&(this.points=[this.points[0],this.editor.ui.page2obj(e)],this.editor.render.drawSelectionRectangle(this.points[0],this.points[1])),this.getSelection()):!1},rnd.Editor.LassoTool.LassoHelper.prototype.end=function(){var e=this.getSelection();return"points"in this&&(this.editor.render.drawSelectionPolygon(null),delete this.points),e},rnd.Editor.EraserTool=function(e,t){this.editor=e,this.maps=["atoms","bonds","rxnArrows","rxnPluses","rgroups","sgroups","sgroupData","chiralFlags"],this._hoverHelper=new rnd.Editor.EditorTool.HoverHelper(this),this._lassoHelper=new rnd.Editor.LassoTool.LassoHelper(t||0,e)},rnd.Editor.EraserTool.prototype=new rnd.Editor.EditorTool,rnd.Editor.EraserTool.prototype.OnMouseDown=function(e){var t=this.editor.render.findItem(e,this.maps);(!t||t.type=="Canvas")&&this._lassoHelper.begin(e)},rnd.Editor.EraserTool.prototype.OnMouseMove=function(e){this._lassoHelper.running()?this.editor._selectionHelper.setSelection(this._lassoHelper.addPoint(e)):this._hoverHelper.hover(this.editor.render.findItem(e,this.maps))},rnd.Editor.EraserTool.prototype.OnMouseUp=function(e){if(this._lassoHelper.running()){this.editor.ui.addUndoAction(this.editor.ui.Action.fromFragmentDeletion(this._lassoHelper.end(e)));for(var t in rnd.ReStruct.maps)ui.selection[t]=[];this.editor.ui.render.update(),this.editor.ui.updateClipboardButtons()}else{var n=this.editor.render.findItem(e,this.maps);if(n&&n.type!="Canvas"){this._hoverHelper.hover(null);if(n.map=="atoms")this.editor.ui.addUndoAction(this.editor.ui.Action.fromAtomDeletion(n.id));else if(n.map=="bonds")this.editor.ui.addUndoAction(this.editor.ui.Action.fromBondDeletion(n.id));else if(n.map=="sgroups"||n.map=="sgroupData")this.editor.ui.addUndoAction(this.editor.ui.Action.fromSgroupDeletion(n.id));else if(n.map=="rxnArrows")this.editor.ui.addUndoAction(this.editor.ui.Action.fromArrowDeletion(n.id));else if(n.map=="rxnPluses")this.editor.ui.addUndoAction(this.editor.ui.Action.fromPlusDeletion(n.id));else{if(n.map!="chiralFlags"){console.log("EraserTool: unable to delete the object "+n.map+"["+n.id+"]");return}this.editor.ui.addUndoAction(this.editor.ui.Action.fromChiralFlagDeletion())}for(var r in rnd.ReStruct.maps)ui.selection[r]=[];this.editor.ui.render.update(),this.editor.ui.updateClipboardButtons(),this.editor._selectionHelper.setSelection()}}},rnd.Editor.AtomTool=function(e,t){this.editor=e,this.atomProps=t,this.bondProps={type:1,stereo:chem.Struct.BOND.STEREO.NONE},this._hoverHelper=new rnd.Editor.EditorTool.HoverHelper(this)},rnd.Editor.AtomTool.prototype=new rnd.Editor.EditorTool,rnd.Editor.AtomTool.prototype.OnMouseDown=function(e){this._hoverHelper.hover(null);var t=this.editor.render.findItem(e,["atoms"]);!t||t.type=="Canvas"?this.dragCtx={xy0:this.editor.ui.page2obj(e)}:t.map=="atoms"&&(this.dragCtx={item:t,xy0:this.editor.ui.page2obj(e)})},rnd.Editor.AtomTool.prototype.OnMouseMove=function(e){var t=this.editor,n=t.render;if("dragCtx"in this&&"item"in this.dragCtx){var r=this.dragCtx,i=this._calcNewAtomPos(n.atomGetPos(r.item.id),t.ui.page2obj(e));"action"in r&&r.action.perform();var s=t.ui.Action.fromBondAddition(this.bondProps,r.item.id,Object.clone(this.atomProps),i,i);r.action=s[0],r.aid2=s[2],n.update()}else this._hoverHelper.hover(n.findItem(e,["atoms"]))},rnd.Editor.AtomTool.prototype.OnMouseUp=function(e){if("dragCtx"in this){var t=this.editor.ui,n=this.dragCtx;t.addUndoAction("action"in n?n.action:"item"in n?t.Action.fromAtomAttrs(n.item.id,this.atomProps):t.Action.fromAtomAddition(t.page2obj(e),this.atomProps),!0),this.editor.render.update(),delete this.dragCtx}},rnd.Editor.BondTool=function(e,t){this.editor=e,this.atomProps={label:"C"},this.bondProps=t,this._hoverHelper=new rnd.Editor.EditorTool.HoverHelper(this)},rnd.Editor.BondTool.prototype=new rnd.Editor.EditorTool,rnd.Editor.BondTool.prototype.OnMouseDown=function(e){return this._hoverHelper.hover(null),this.dragCtx={xy0:this.editor.ui.page2obj(e),item:this.editor.render.findItem(e,["atoms","bonds"])},(!this.dragCtx.item||this.dragCtx.item.type=="Canvas")&&delete this.dragCtx.item,!0},rnd.Editor.BondTool.prototype.OnMouseMove=function(e){var t=this.editor,n=t.render;if("dragCtx"in this){var r=this.dragCtx;if(!("item"in r)||r.item.map=="atoms"){"action"in r&&r.action.perform();var i,s,o,u;return"item"in r&&r.item.map=="atoms"?(i=r.item.id,s=n.findItem(e,["atoms"],r.item)):(i=this.atomProps,o=r.xy0,s=n.findItem(e,["atoms"])),s&&s.map=="atoms"?s=s.id:(s=this.atomProps,o?u=this._calcNewAtomPos(o,t.ui.page2obj(e)):o=this._calcNewAtomPos(n.atomGetPos(i),t.ui.page2obj(e))),r.action=t.ui.Action.fromBondAddition(this.bondProps,i,s,o,u)[0],n.update(),!0}}return this._hoverHelper.hover(n.findItem(e,["atoms","bonds"])),!0},rnd.Editor.BondTool.prototype.OnMouseUp=function(e){if("dragCtx"in this){var t=this.editor.ui,n=this.dragCtx;if("action"in n)t.addUndoAction(n.action);else if("item"in n){if(n.item.map=="atoms"){var s=t.atomForNewBond(n.item.id);t.addUndoAction(t.Action.fromBondAddition(this.bondProps,n.item.id,s.atom,s.pos)[0])}else if(n.item.map=="bonds"){var o=Object.clone(this.bondProps),u=t.ctab.bonds.get(n.item.id);o.stereo!=chem.Struct.BOND.STEREO.NONE&&u.type==chem.Struct.BOND.TYPE.SINGLE&&o.type==chem.Struct.BOND.TYPE.SINGLE&&u.stereo==o.stereo?t.addUndoAction(t.Action.fromBondFlipping(n.item.id)):(u.type==o.type&&(u.type==chem.Struct.BOND.TYPE.SINGLE?u.stereo==chem.Struct.BOND.STEREO.NONE&&u.stereo==o.stereo&&(o.type=chem.Struct.BOND.TYPE.DOUBLE):u.type==chem.Struct.BOND.TYPE.DOUBLE?o.type=chem.Struct.BOND.TYPE.TRIPLE:u.type==chem.Struct.BOND.TYPE.TRIPLE&&(o.type=chem.Struct.BOND.TYPE.SINGLE)),t.addUndoAction(t.Action.fromBondAttrs(n.item.id,o,t.bondFlipRequired(u,o)),!0))}}else{var r=this.editor.ui.page2obj(e),i=(new util.Vec2(.5,0)).rotate(this.bondProps.type==chem.Struct.BOND.TYPE.SINGLE?-Math.PI/6:0);t.addUndoAction(t.Action.fromBondAddition(this.bondProps,{label:"C"},{label:"C"},{x:r.x-i.x,y:r.y-i.y},{x:r.x+i.x,y:r.y+i.y})[0])}this.editor.render.update(),delete this.dragCtx}return!0},rnd.Editor.ChainTool=function(e){this.editor=e,this._hoverHelper=new rnd.Editor.EditorTool.HoverHelper(this)},rnd.Editor.ChainTool.prototype=new rnd.Editor.EditorTool,rnd.Editor.ChainTool.prototype.OnMouseDown=function(e){return this._hoverHelper.hover(null),this.dragCtx={xy0:this.editor.ui.page2obj(e),item:this.editor.render.findItem(e,["atoms"])},(!this.dragCtx.item||this.dragCtx.item.type=="Canvas")&&delete this.dragCtx.item,!0},rnd.Editor.ChainTool.prototype.OnMouseMove=function(e){var t=this.editor,n=t.render;if("dragCtx"in this){var r=this.dragCtx;"action"in r&&r.action.perform();var i="item"in r?n.atomGetPos(r.item.id):r.xy0,s=t.ui.page2obj(e);return r.action=t.ui.Action.fromChain(i,this._calcAngle(i,s),Math.ceil(util.Vec2.diff(s,i).length()),"item"in r?r.item.id:null),n.update(),!0}return this._hoverHelper.hover(n.findItem(e,["atoms"])),!0},rnd.Editor.ChainTool.prototype.OnMouseUp=function(){return"dragCtx"in this&&("action"in this.dragCtx&&this.editor.ui.addUndoAction(this.dragCtx.action),delete this.dragCtx),!0},rnd.Editor.TemplateTool=function(e,t){this.editor=e,this.template=t,this._hoverHelper=new rnd.Editor.EditorTool.HoverHelper(this)},rnd.Editor.TemplateTool.prototype=new rnd.Editor.EditorTool,rnd.Editor.TemplateTool.prototype.templates=[[1,2,1,2,1,2],[1,2,1,2,1],[1,1,1,1,1,1],[1,1,1,1,1],[1,1,1],[1,1,1,1],[1,1,1,1,1,1,1],[1,1,1,1,1,1,1,1]],rnd.Editor.TemplateTool.prototype.OnMouseMove=function(e){this._hoverHelper.hover(this.editor.render.findItem(e,["atoms","bonds"]))},rnd.Editor.TemplateTool.prototype.OnMouseUp=function(e){this._hoverHelper.hover(null);var t=this.editor.render.findItem(e,["atoms","bonds"]);!t||t.type=="Canvas"?(this.editor.ui.addUndoAction(this.editor.ui.Action.fromPatternOnCanvas(this.editor.ui.page2obj(e),this.templates[this.template]),!0),this.editor.ui.render.update()):t.map=="atoms"?(this.editor.ui.addUndoAction(this.editor.ui.Action.fromPatternOnAtom(t.id,this.templates[this.template]),!0),this.editor.ui.render.update()):t.map=="bonds"&&(this.editor.ui.addUndoAction(this.editor.ui.Action.fromPatternOnElement(t.id,this.templates[this.template],!1),!0),this.editor.ui.render.update())},rnd.Editor.ChargeTool=function(e,t){this.editor=e,this.charge=t,this._hoverHelper=new rnd.Editor.EditorTool.HoverHelper(this)},rnd.Editor.ChargeTool.prototype=new rnd.Editor.EditorTool,rnd.Editor.ChargeTool.prototype.OnMouseMove=function(e){return this._hoverHelper.hover(this.editor.render.findItem(e,["atoms"])),!0},rnd.Editor.ChargeTool.prototype.OnMouseUp=function(e){var t=this.editor,n=t.render,r=n.findItem(e,["atoms"]);return r&&r.map=="atoms"&&(this._hoverHelper.hover(null),t.ui.addUndoAction(t.ui.Action.fromAtomAttrs(r.id,{charge:n.ctab.molecule.atoms.get(r.id).charge+this.charge})),n.update()),!0},rnd.Editor.RGroupAtomTool=function(e){this.editor=e,this._hoverHelper=new rnd.Editor.EditorTool.HoverHelper(this)},rnd.Editor.RGroupAtomTool.prototype=new rnd.Editor.EditorTool,rnd.Editor.RGroupAtomTool.prototype.OnMouseMove=function(e){this._hoverHelper.hover(this.editor.render.findItem(e,["atoms"]))},rnd.Editor.RGroupAtomTool.prototype.OnMouseUp=function(e){var t=this.editor.render.findItem(e,["atoms"]);if(!t||t.type=="Canvas")return this._hoverHelper.hover(null),this.editor.ui.showRGroupTable({onOk:function(e){e&&(this.editor.ui.addUndoAction(this.editor.ui.Action.fromAtomAddition(this.editor.ui.page2obj(this.OnMouseMove0.lastEvent),{label:"R#",rglabel:e}),!0),this.editor.ui.render.update())}.bind(this)}),!0;if(t&&t.map=="atoms"){this._hoverHelper.hover(null);var n=this.editor.render.ctab.molecule.atoms.get(t.id).label,r=this.editor.render.ctab.molecule.atoms.get(t.id).rglabel;return this.editor.ui.showRGroupTable({selection:r,onOk:function(e){if(r!=e||n!="R#"){var i=Object.clone(chem.Struct.Atom.attrlist);e?(i.label="R#",i.rglabel=e):i.label="C",this.editor.ui.addUndoAction(this.editor.ui.Action.fromAtomAttrs(t.id,i),!0),this.editor.ui.render.update()}}.bind(this)}),!0}},rnd.Editor.RGroupFragmentTool=function(e){this.editor=e,this._hoverHelper=new rnd.Editor.EditorTool.HoverHelper(this)},rnd.Editor.RGroupFragmentTool.prototype=new rnd.Editor.EditorTool,rnd.Editor.RGroupFragmentTool.prototype.OnMouseMove=function(e){this._hoverHelper.hover(this.editor.render.findItem(e,["frags","rgroups"]))},rnd.Editor.RGroupFragmentTool.prototype.OnMouseUp=function(e){var t=this.editor.render.findItem(e,["frags","rgroups"]);if(t&&t.map=="frags"){this._hoverHelper.hover(null);var n=chem.Struct.RGroup.findRGroupByFragment(this.editor.render.ctab.molecule.rgroups,t.id);return this.editor.ui.showRGroupTable({mode:"single",selection:n?1<<n-1:0,onOk:function(e){for(var r=0;r<32;r++)if(e&1<<r){e=r+1;break}n!=e&&(this.editor.ui.addUndoAction(this.editor.ui.Action.fromRGroupFragment(e,t.id),!0),this.editor.ui.render.update())}.bind(this)}),!0}if(t&&t.map=="rgroups"){this._hoverHelper.hover(null);var r=this.editor.render.ctab.molecule.rgroups.get(t.id),i=0;this.editor.render.ctab.molecule.rgroups.each(function(e){i|=1<<e-1});var s={occurrence:r.range,resth:r.resth,ifthen:r.ifthen};return this.editor.ui.showRLogicTable({rgid:t.id,rlogic:s,rgmask:i,onOk:function(e){var n={};s.occurrence!=e.occurrence&&(n.range=e.occurrence),s.resth!=e.resth&&(n.resth=e.resth),s.ifthen!=e.ifthen&&(n.ifthen=e.ifthen);if("range"in n||"resth"in n||"ifthen"in n)this.editor.ui.addUndoAction(this.editor.ui.Action.fromRGroupAttrs(t.id,n)),this.editor.render.update()}.bind(this)}),!0}},rnd.Editor.APointTool=function(e){this.editor=e,this._hoverHelper=new rnd.Editor.EditorTool.HoverHelper(this)},rnd.Editor.APointTool.prototype=new rnd.Editor.EditorTool,rnd.Editor.APointTool.prototype.OnMouseMove=function(e){this._hoverHelper.hover(this.editor.render.findItem(e,["atoms"]))},rnd.Editor.APointTool.prototype.OnMouseUp=function(e){var t=this.editor.render.findItem(e,["atoms"]);if(t&&t.map=="atoms"){this._hoverHelper.hover(null);var n=this.editor.render.ctab.molecule.atoms.get(t.id).attpnt;return this.editor.ui.showAtomAttachmentPoints({selection:n,onOk:function(e){n!=e&&(this.editor.ui.addUndoAction(this.editor.ui.Action.fromAtomAttrs(t.id,{attpnt:e}),!0),this.editor.ui.render.update())}.bind(this)}),!0}},rnd.Editor.ReactionArrowTool=function(e){this.editor=e,this._hoverHelper=new rnd.Editor.EditorTool.HoverHelper(this)},rnd.Editor.ReactionArrowTool.prototype=new rnd.Editor.EditorTool,rnd.Editor.ReactionArrowTool.prototype.OnMouseDown=function(e){var t=this.editor.render.findItem(e,["rxnArrows"]);t&&t.map=="rxnArrows"&&(this._hoverHelper.hover(null),this.editor._selectionHelper.setSelection(t),this.dragCtx={xy0:this.editor.ui.page2obj(e)})},rnd.Editor.ReactionArrowTool.prototype.OnMouseMove=function(e){"dragCtx"in this?(this.dragCtx.action&&this.dragCtx.action.perform(),this.dragCtx.action=ui.Action.fromMultipleMove(this.editor._selectionHelper.selection,this.editor.ui.page2obj(e).sub(this.dragCtx.xy0)),this.editor.ui.render.update()):this._hoverHelper.hover(this.editor.render.findItem(e,["rxnArrows"]))},rnd.Editor.ReactionArrowTool.prototype.OnMouseUp=function(e){"dragCtx"in this?(this.editor.ui.addUndoAction(this.dragCtx.action,!1),this.editor.render.update(),delete this.dragCtx):this.editor.render.ctab.molecule.rxnArrows.count()<1&&(this.editor.ui.addUndoAction(this.editor.ui.Action.fromArrowAddition(this.editor.ui.page2obj(e))),this.editor.render.update())},rnd.Editor.ReactionPlusTool=function(e){this.editor=e,this._hoverHelper=new rnd.Editor.EditorTool.HoverHelper(this)},rnd.Editor.ReactionPlusTool.prototype=new rnd.Editor.EditorTool,rnd.Editor.ReactionPlusTool.prototype.OnMouseDown=function(e){var t=this.editor.render.findItem(e,["rxnPluses"]);t&&t.map=="rxnPluses"&&(this._hoverHelper.hover(null),this.editor._selectionHelper.setSelection(t),this.dragCtx={xy0:this.editor.ui.page2obj(e)})},rnd.Editor.ReactionPlusTool.prototype.OnMouseMove=function(e){"dragCtx"in this?(this.dragCtx.action&&this.dragCtx.action.perform(),this.dragCtx.action=ui.Action.fromMultipleMove(this.editor._selectionHelper.selection,this.editor.ui.page2obj(e).sub(this.dragCtx.xy0)),this.editor.ui.render.update()):this._hoverHelper.hover(this.editor.render.findItem(e,["rxnPluses"]))},rnd.Editor.ReactionPlusTool.prototype.OnMouseUp=function(e){"dragCtx"in this?(this.editor.ui.addUndoAction(this.dragCtx.action,!1),this.editor.render.update(),delete this.dragCtx):(this.editor.ui.addUndoAction(this.editor.ui.Action.fromPlusAddition(this.editor.ui.page2obj(e))),this.editor.render.update())},rnd.Editor.ReactionMapTool=function(e){this.editor=e,this._hoverHelper=new rnd.Editor.EditorTool.HoverHelper(this),this.editor._selectionHelper.setSelection(null),this.rcs=chem.MolfileSaver.getComponents(this.editor.render.ctab.molecule)},rnd.Editor.ReactionMapTool.prototype=new rnd.Editor.EditorTool,rnd.Editor.ReactionMapTool.prototype.OnMouseDown=function(e){var t=this.editor.render.findItem(e,["atoms"]);t&&t.map=="atoms"&&(this._hoverHelper.hover(null),this.dragCtx={item:t,xy0:this.editor.ui.page2obj(e)})},rnd.Editor.ReactionMapTool.prototype.OnMouseMove=function(e){var t=this.editor.render;if("dragCtx"in this){var n=t.findItem(e,["atoms"],this.dragCtx.item);n&&n.map=="atoms"&&this._isValidMap(this.dragCtx.item.id,n.id)?(this._hoverHelper.hover(n),t.drawSelectionLine(t.atomGetPos(this.dragCtx.item.id),t.atomGetPos(n.id))):(this._hoverHelper.hover(null),t.drawSelectionLine(t.atomGetPos(this.dragCtx.item.id),this.editor.ui.page2obj(e)))}else this._hoverHelper.hover(t.findItem(e,["atoms"]))},rnd.Editor.ReactionMapTool.prototype.OnMouseUp=function(e){if("dragCtx"in this){var t=this.editor.render,n=t.findItem(e,["atoms"],this.dragCtx.item);if(n&&n.map=="atoms"&&this._isValidMap(this.dragCtx.item.id,n.id)){var r=new this.editor.ui.Action,i=t.ctab.molecule.atoms,s=i.get(this.dragCtx.item.id),o=i.get(n.id),u=s.aam,a=o.aam;if(!u||u!=a){(u&&u!=a||!u&&a)&&i.each(function(e,t){e!=this.dragCtx.item.id&&(u&&t.aam==u||a&&t.aam==a)&&r.mergeWith(this.editor.ui.Action.fromAtomAttrs(e,{aam:0}))},this);if(u)r.mergeWith(this.editor.ui.Action.fromAtomAttrs(n.id,{aam:u}));else{var f=0;i.each(function(e,t){f=Math.max(f,t.aam||0)}),r.mergeWith(this.editor.ui.Action.fromAtomAttrs(this.dragCtx.item.id,{aam:f+1})),r.mergeWith(this.editor.ui.Action.fromAtomAttrs(n.id,{aam:f+1}))}this.editor.ui.addUndoAction(r,!0),t.update()}}t.drawSelectionLine(null),delete this.dragCtx}this._hoverHelper.hover(null)},rnd.Editor.ReactionMapTool.prototype._isValidMap=function(e,t){var n,r;for(var i=0;(!n||!r)&&i<this.rcs.reactants.length;i++){var s=util.Set.list(this.rcs.reactants[i]);!n&&s.indexOf(e)>=0&&(n="r"),!r&&s.indexOf(t)>=0&&(r="r")}for(var o=0;(!n||!r)&&o<this.rcs.products.length;o++){var u=util.Set.list(this.rcs.products[o]);!n&&u.indexOf(e)>=0&&(n="p"),!r&&u.indexOf(t)>=0&&(r="p")}return n&&r&&n!=r},rnd.Editor.ReactionUnmapTool=function(e){this.editor=e,this._hoverHelper=new rnd.Editor.EditorTool.HoverHelper(this),this.editor._selectionHelper.setSelection(null)},rnd.Editor.ReactionUnmapTool.prototype=new rnd.Editor.EditorTool,rnd.Editor.ReactionUnmapTool.prototype.OnMouseMove=function(e){var t=this.editor.render.findItem(e,["atoms"]);t&&t.map=="atoms"?this._hoverHelper.hover(this.editor.render.ctab.molecule.atoms.get(t.id).aam?t:null):this._hoverHelper.hover(null)},rnd.Editor.ReactionUnmapTool.prototype.OnMouseUp=function(e){var t=this.editor.render.findItem(e,["atoms"]),n=this.editor.render.ctab.molecule.atoms;if(t&&t.map=="atoms"&&n.get(t.id).aam){var r=new this.editor.ui.Action,i=n.get(t.id).aam;n.each(function(e,t){t.aam==i&&r.mergeWith(this.editor.ui.Action.fromAtomAttrs(e,{aam:0}))},this),this.editor.ui.addUndoAction(r,!0),this.editor.render.update()}this._hoverHelper.hover(null)},rnd.Editor.SGroupTool=function(e){this.editor=e,this.maps=["atoms","bonds","sgroups","sgroupData"],this._hoverHelper=new rnd.Editor.EditorTool.HoverHelper(this),this._lassoHelper=new rnd.Editor.LassoTool.LassoHelper(1,e),this._sGroupHelper=new rnd.Editor.SGroupTool.SGroupHelper(e);var t=this.editor.ui.selection;t.atoms&&t.atoms.length>0?this._sGroupHelper.showPropertiesDialog(null,t):this.editor.ui.updateSelection()},rnd.Editor.SGroupTool.prototype=new rnd.Editor.EditorTool,rnd.Editor.SGroupTool.prototype.OnMouseDown=function(e){var t=this.editor.render.findItem(e,this.maps);(!t||t.type=="Canvas")&&this._lassoHelper.begin(e)},rnd.Editor.SGroupTool.prototype.OnMouseMove=function(e){this._lassoHelper.running()?this.editor._selectionHelper.setSelection(this._lassoHelper.addPoint(e)):this._hoverHelper.hover(this.editor.render.findItem(e,this.maps))},rnd.Editor.SGroupTool.SGroupHelper=function(e){this.editor=e,this.selection=null},rnd.Editor.SGroupTool.SGroupHelper.prototype.showPropertiesDialog=function(e,t){this.selection=t;var n=this.editor.render;if(e==null){var r={},i={};t.atoms.each(function(e){i[e]=!0},this);if(!Object.isUndefined(t.atoms.detect(function(e){var s=n.atomGetSGroups(e);return!Object.isUndefined(s.detect(function(e){if(e in r)return!1;var s=n.sGroupGetAtoms(e);if(s.length<t.atoms.length){if(!Object.isUndefined(s.detect(function(e){return!(e in i)},this)))return!0}else if(!Object.isUndefined(t.atoms.detect(function(e){return s.indexOf(e)==-1},this)))return!0;return!1},this))},this))){alert("Partial S-group overlapping is not allowed.");return}}this.editor.ui.showSGroupProperties(e,this,this.selection,this.OnPropertiesDialogOk,this.OnPropertiesDialogCancel)},rnd.Editor.SGroupTool.prototype.OnMouseUp=function(e){var t=null,n=null;if(this._lassoHelper.running())n=this._lassoHelper.end(e);else{var r=this.editor.render.findItem(e,this.maps);if(!r||r.type=="Canvas")return;this._hoverHelper.hover(null);if(r.map=="atoms")n={atoms:[r.id]};else if(r.map=="bonds"){var i=this.editor.render.ctab.bonds.get(r.id);n={atoms:[i.b.begin,i.b.end]}}else{if(r.map!="sgroups")return;t=r.id}}(t!=null||n&&n.atoms&&n.atoms.length>0)&&this._sGroupHelper.showPropertiesDialog(t,n)},rnd.Editor.SGroupTool.SGroupHelper.prototype.postClose=function(){this.editor.ui.updateSelection(),this.editor.ui.updateClipboardButtons(),this.editor.render.update()},rnd.Editor.SGroupTool.SGroupHelper.prototype.OnPropertiesDialogOk=function(e,t,n){e==null?(e=ui.render.ctab.molecule.sgroups.newId(),this.editor.ui.addUndoAction(this.editor.ui.Action.fromSgroupAddition(t,this.selection.atoms,n,e),!0)):this.editor.ui.addUndoAction(this.editor.ui.Action.fromSgroupAttrs(e,n).mergeWith(this.editor.ui.Action.fromSgroupType(e,t)),!0),this.postClose()},rnd.Editor.SGroupTool.SGroupHelper.prototype.OnPropertiesDialogCancel=function(){this.postClose()},rnd.Editor.PasteTool=function(e){this.editor=e,this.action=this.editor.ui.Action.fromPaste(this.editor.ui.clipboard,"lastEvent"in this.OnMouseMove0?util.Vec2.diff(this.editor.ui.page2obj(this.OnMouseMove0.lastEvent),this.editor.ui.clipboard.getAnchorPosition()):undefined),this.editor.render.update()},rnd.Editor.PasteTool.prototype=new rnd.Editor.EditorTool,rnd.Editor.PasteTool.prototype.OnMouseMove=function(e){this.action.perform(this.editor),this.action=this.editor.ui.Action.fromPaste(this.editor.ui.clipboard,util.Vec2.diff(this.editor.ui.page2obj(e),this.editor.ui.clipboard.getAnchorPosition())),this.editor.render.update()},rnd.Editor.PasteTool.prototype.OnMouseUp=function(){this.editor.ui.addUndoAction(this.action),delete this.action,this.editor.ui.selectMode(this.editor.ui.defaultSelector)},rnd.Editor.PasteTool.prototype.OnCancel=function(){"action"in this&&(this.action.perform(this
.editor),delete this.action)};