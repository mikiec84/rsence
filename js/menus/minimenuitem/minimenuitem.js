/*   RSence
 *   Copyright 2010 Riassence Inc.
 *   http://riassence.com/
 *
 *   You should have received a copy of the GNU General Public License along
 *   with this software package. If not, contact licensing@riassence.com
 */


/*** = Description
  ** Menu item for the HMiniMenu component.
  ***/
var//RSence.Menus
HMiniMenuItem = HRadioButton.extend({
  
  componentName: 'minimenuitem',
  
  defaultEvents: {
    click: true,
    mouseUp: true,
    mouseDown: true
  },
  
  _activateParentParent: function(){
    var _parentParent = this.parent.parent;
    EVENT.changeActiveControl(_parentParent);
  },

  click: function(){
    this.base();
    this._activateParentParent();
    return true;
  },
  
  mouseDown: function(){
    this.base();
    this.click();
    return true;
  },
  
  mouseUp: function(){
    this.base();
    this.click();
    return true;
  }
  
});
