<?php

function create($class, $atrributes = [])
{
	return factory($class)->create($atrributes);
}

function make($class, $atrributes = [])
{
	return factory($class)->make($atrributes);
}