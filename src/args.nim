import therapist

let install = (
  packages: newStringArg(@["<packages>"], help="The package[s] to install", multi=true)
)

let spec = (
  help: newHelpArg(@["-h", "--help"], help="Show help message"),
  install: newCommandArg(@["i", "ins", "install"], install, help="Install some packages")
)

spec.parseOrQuit(prolog="Grain - The all in one rice installer and aur helper")