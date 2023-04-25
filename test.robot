*** Settings ***
Library         OperatingSystem

*** Test Cases ***
Example Test Case
    [Documentation]    Check if a folder exists
    ${folder_path}=     Set Variable    /path/to/folder
    ${folder_exists}=   Run Keyword And Return Status    Test Path Exists ${folder_path}
    Run Keyword If      ${folder_exists}
    ...                 Log    Folder exists: ${folder_path}
    ...             ELSE
    ...                 Log    Folder does not exist: ${folder_path}

*** Settings ***
Library         Process


*** Variables ***
${IMG_FILE}     /path/to/image.qcow2
${MOUNT_POINT}  /mnt/qcow2


*** Test Cases ***
Mount QCOW2 Image
    [Documentation]    Mount a QCOW2 image
    ${output}=         Run Process    qemu-nbd --connect=/dev/nbd0 ${IMG_FILE}
    Should Contain     ${output}     nbd0p1


    ${output}=         Run Process    mount /dev/nbd0p1 ${MOUNT_POINT}
    Should Not Be Empty  ${output}


    # Do some stuff with the mounted image


    ${output}=         Run Process    umount ${MOUNT_POINT}
    Should Not Be Empty  ${output}


    ${output}=         Run Process    qemu-nbd --disconnect /dev/nbd0
    Should Not Be Empty  ${output}


    ${output}=  Run Process  devb-loopback blk cache=256k,vnode=128 loopback ro,blksz=4096,fd=${QTD_TEST}/qtd_sample_fs.img &
    Should Not Be Empty  ${output}


    ${output}=  Run Process  mount -t qtd -o key=${QTD_TEST}/rsa_public_key.pem,stats,verbose,verify /dev/lo0 ${QTD_DEVICE}
    Should Not Be Empty  ${output}


    ${output}=  Run Process  mount -vvvv -o ro -t qnx6 ${QTD_DEVICE}/dev_qtd ${MOUNT_POINT}
    Should Not Be Empty  ${output}


${CHECK_QTD_DEVICE}=  Run Keyword And Return Status  Test Path Exists ${QTD_DEVICE}
    Run Keyword If     ${CHECK_QTD_DEVICE}
    ...            Log  Folder exists: ${QTD_DEVICE}
    ...    ELSE
                   ${stdout}  ${stderr}  ${rc} =  Execute Command Remote   mkdir ${QTD_DEVICE}
                   ${stdout}  ${stderr}  ${rc} =  Execute Command Remote   mkdir ${MOUNT_POINT}
    devb-loopback blk cache\=256k,vnode\=128 loopback ro,blksz\=4096,fd\=/var/qtd_test/qtd_sample_fs_qtd.img & sleep 5 && mount -t qtd -o key=/var/qtd_test/rsa_public_blue.pem,stats,verbose,verify /dev/lo0 /var/qtd_test/dev_qtd && mount -vvvv -o ro -t qnx6 /var/qtd_test/dev_qtd /var/qtd_test/mount

    devb-loopback blk cache\=64k,vnode\=32 loopback ro,blksz\=1024,fd\=/var/qtd_test/qtd_sample_fs_qtd.img & sleep 5 && mount -t qtd -o key=/var/qtd_test/rsa_public_blue.pem,stats,verbose,verify /dev/lo0 /var/qtd_test/dev_qtd && mount -vvvv -o ro -t qnx6 /var/qtd_test/dev_qtd /var/qtd_test/mount

    /var/nohup /nvidia_overlay/devb-loopback blk cache\=64k,vnode\=32 loopback ro,blksz\=1024,fd\=/var/qtd_test/qtd_sample_fs_qtd.img & echo -ne '\r' && sleep 5 && mount -t qtd -o key=/var/qtd_test/rsa_public_blue.pem,stats,verbose,verify /dev/lo0 /var/qtd_test/dev_qtd && mount -vvvv -o ro -t qnx6 /var/qtd_test/dev_qtd /var/qtd_test/mount