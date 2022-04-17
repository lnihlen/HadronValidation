HadronValidator {
	*path {
		var p = PathName.new(HadronValidator.class.filenameSymbol.asString.dirname).parentPath;
		if (thisProcess.platform.name === 'windows', {
			p = p.tr($/, $\\);
		});
		^p;
	}
}
