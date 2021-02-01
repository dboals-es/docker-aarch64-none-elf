docker build -t embeddedsandbox/aarch64-none-elf-10.2-2020.11 .
docker images
echo "docker tag XYZ embeddedsandbox/aarch64-non-elf-cross-compiler:latest"
echo "docker push embeddedsandbox/aarch64-non-elf-cross-compiler:latest"
