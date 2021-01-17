docker build --no-cache -t aarch64-non-elf-cross-compiler .
docker images
echo "docker tag XYZ embeddedsandbox/aarch64-non-elf-cross-compiler:Vn"
echo "docker push embeddedsandbox/aarch64-non-elf-cross-compiler:Vn"
