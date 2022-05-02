package com.inbiznetcorp.visible.ars.front.ui.framework.mymap;

import com.inbiznetcorp.visible.ars.front.ui.framework.utils.FrameworkUtils;

public class MyCamelMap extends MyMap
{
	private static final long serialVersionUID = -7776502858956301180L;

	public Object put(Object key,Object value)
	{
		return super.put(FrameworkUtils.convCamelCase((String)key),value);
	}
}