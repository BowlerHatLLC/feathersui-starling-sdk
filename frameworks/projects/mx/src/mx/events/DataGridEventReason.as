
package mx.events
{

/**
 *  The DataGridEventReason class defines constants for the values 
 *  of the <code>reason</code> property of a DataGridEvent object 
 *  when the <code>type</code> property is <code>itemEditEnd</code>.
 *  
 *  @langversion 3.0
 *  @playerversion Flash 9
 *  @playerversion AIR 1.1
 *  @productversion Flex 3
 */
public final class DataGridEventReason
{
	include "../core/Version.as";

	//--------------------------------------------------------------------------
	//
	//  Class constants
	//
	//--------------------------------------------------------------------------

    /**
     *  Specifies that the user cancelled editing and that they do not 
     *  want to save the edited data. Even if you call the <code>preventDefault()</code> method 
     *  from within your event listener for the <code>itemEditEnd</code> event, 
     *  Flex still calls the <code>destroyItemEditor()</code> editor to close the editor.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    public static const CANCELLED:String = "cancelled";

    /**
     *  Specifies that the list control lost focus, was scrolled, 
     *  or is somehow in a state where editing is not allowed. 
     *  Even if you call the <code>preventDefault()</code> method from within your event 
     *  listener for the <code>itemEditEnd</code> event, 
     *  Flex still calls the <code>destroyItemEditor()</code> editor to close the editor.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    public static const OTHER:String = "other";

    /**
     *  Specifies that the user moved focus to a new column in the same row. 
     *  Within an event listener, you can let the focus change occur, or prevent it. 
     *  For example, your event listener might check that the user entered a valid value 
     *  for the item currently being edited. If not, you can prevent the user from moving 
     *  to a new item by calling the <code>preventDefault()</code> method. 
     *  In this case, the item editor remains open, and the user continues to edit 
     *  the current item. If you call the <code>preventDefault()</code> method and 
     *  also call the <code>destroyItemEditor()</code> method, you block the move to the new item, 
     *  but the item editor closes. 
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    public static const NEW_COLUMN:String = "newColumn";

    /**
     *  Specifies that the user moved focus to a new row. 
     *  You handle this reason much like you handle <code>NEW_COLUMN</code>.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    public static const NEW_ROW:String = "newRow";
}

}
