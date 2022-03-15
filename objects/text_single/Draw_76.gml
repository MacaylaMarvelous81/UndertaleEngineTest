switch(effect){
	case -1:
		_offset_x=0;
		_offset_y=0;
		break;
		
	case 0:
		if(_effect_shook){
			_offset_x=random_range(-1,1);
			_offset_y=random_range(-1,1);
		}
		_effect_shook=!_effect_shook;
		break;
		
	case 1:
		siner += 1;
		_offset_x = sin(siner / 10) * 2;
		_offset_y = cos(siner / 10) * 2;
		break;
}