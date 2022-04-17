(
var testsPath = PathName.new(HadronValidator.path +/+ "tests");
var exitCode = 0;

testsPath.filesDo({ |pathName|
	var path = pathName.asAbsolutePath;
	var result = this.executeFile(path);
	if (result.notNil, {
		path.postln;
		result.postln;
		exitCode = -1;
	});
});

exitCode;
// exitCode.exit;
)