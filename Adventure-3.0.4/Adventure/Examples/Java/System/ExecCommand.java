class ExecCommand {
    public static void main(String[] args) {
        System.out.println("Executing Windows Calculator...");

        try {
            String command = "calc";
            Process child = Runtime.getRuntime().exec(command);

        } catch (java.io.IOException e) {
            // Failed to execute command.
            e.printStackTrace();
        }
    }
}
