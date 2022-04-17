class ShowCmdLineArgs {
    public static void main(String[] args) {

        if (args.length == 0) {
            System.out.println("No command line arguments were supplied.");
            System.exit(0);
        }

        System.out.println("Command line arguments:");

        for (int i = 0; i < args.length; i++) {
            System.out.println(args[i]);
        }
    }
}
