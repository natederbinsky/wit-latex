<?php
	
	/**
	 * Script to produce commands for (1) a blank schedule
	 * and (2) the grid that looks up each cell
	 */

	$start_h = 8;
	$end_h = 16;
	
	$days = array( 'm', 't', 'w', 'h', 'f' );
	
	//
	
	$num_slots = ( ( $end_h - $start_h ) + 1 ) * 2;
	
	//
	
	echo "\n\n\n";
	
	foreach ( $days as $day )
	{
		for ( $slot=1; $slot<=$num_slots; $slot++ )
		{
			echo '\slotclear{' . $day . '}{' . $slot . '}' . "\n";
		}
	}
	
	echo "\n\n\n";
	
	for ( $hour=$start_h, $slot=1; $hour<=$end_h; $hour++ )
	{
		
		$real_hour = $hour;
		$ampm = 'AM';
		if ( $real_hour >= 12 )
		{
			$ampm = 'PM';
			
			if ( $real_hour > 12 )
			{
				$real_hour -= 12;
			}
		}
		
		for ( $half=0; $half<=1; $half++, $slot++ )
		{
			
			echo '\multicolumn{1}{|r|}{\textbf{' . $real_hour . ':' . ( ( $half == 0 )?( '00' ):( '30' ) ) . ' ' . $ampm . '}}';
			
			foreach ( $days as $day )
			{
				echo ' &';
				echo ' \centering';
				echo ' \multirow';
				echo '{-\get{s}{' . $day . '}{' . $slot . '}}';
				echo '{*}';
				echo '{\begin{varwidth}{2.2cm}\centering {\cellcolor{\get{c}{' . $day . '}{' . $slot . '}}{\get{t}{' . $day . '}{' . $slot . '}}}\end{varwidth}}';
			}
			
			echo ' \tabularnewline';
			echo ' \hhline{-}';
			
			echo "\n";
			
		}
		
	}
	
?>
