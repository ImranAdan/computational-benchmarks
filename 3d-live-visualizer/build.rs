fn main() {
    cc::Build::new()
        .file("src/engines/c_engine.c")
        .opt_level(3)
        .flag("-mcpu=native")
        .compile("c_engine");

    cc::Build::new()
        .cpp(true)
        .file("src/engines/cpp_engine.cpp")
        .opt_level(3)
        .flag("-mcpu=native")
        .compile("cpp_engine");

    println!("cargo:rerun-if-changed=src/engines/c_engine.c");
    println!("cargo:rerun-if-changed=src/engines/cpp_engine.cpp");
}
