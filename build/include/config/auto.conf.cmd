deps_config := \
	/home/jose/esp/esp-idf/components/app_trace/Kconfig \
	/home/jose/esp/esp-idf/components/aws_iot/Kconfig \
	/home/jose/esp/esp-idf/components/bt/Kconfig \
	/home/jose/esp/esp-idf/components/driver/Kconfig \
	/home/jose/esp/esp-idf/components/efuse/Kconfig \
	/home/jose/esp/esp-idf/components/esp32/Kconfig \
	/home/jose/esp/esp-idf/components/esp_adc_cal/Kconfig \
	/home/jose/esp/esp-idf/components/esp_event/Kconfig \
	/home/jose/esp/esp-idf/components/esp_http_client/Kconfig \
	/home/jose/esp/esp-idf/components/esp_http_server/Kconfig \
	/home/jose/esp/esp-idf/components/esp_https_ota/Kconfig \
	/home/jose/esp/esp-idf/components/espcoredump/Kconfig \
	/home/jose/esp/esp-idf/components/ethernet/Kconfig \
	/home/jose/esp/esp-idf/components/fatfs/Kconfig \
	/home/jose/esp/esp-idf/components/freemodbus/Kconfig \
	/home/jose/esp/esp-idf/components/freertos/Kconfig \
	/home/jose/esp/esp-idf/components/heap/Kconfig \
	/home/jose/esp/esp-idf/components/libsodium/Kconfig \
	/home/jose/esp/esp-idf/components/log/Kconfig \
	/home/jose/esp/esp-idf/components/lwip/Kconfig \
	/home/jose/esp/esp-idf/components/mbedtls/Kconfig \
	/home/jose/esp/esp-idf/components/mdns/Kconfig \
	/home/jose/esp/esp-idf/components/mqtt/Kconfig \
	/home/jose/esp/esp-idf/components/nvs_flash/Kconfig \
	/home/jose/esp/esp-idf/components/openssl/Kconfig \
	/home/jose/esp/esp-idf/components/pthread/Kconfig \
	/home/jose/esp/esp-idf/components/spi_flash/Kconfig \
	/home/jose/esp/esp-idf/components/spiffs/Kconfig \
	/home/jose/esp/esp-idf/components/tcpip_adapter/Kconfig \
	/home/jose/esp/esp-idf/components/unity/Kconfig \
	/home/jose/esp/esp-idf/components/vfs/Kconfig \
	/home/jose/esp/esp-idf/components/wear_levelling/Kconfig \
	/home/jose/esp/esp-idf/components/wifi_provisioning/Kconfig \
	/home/jose/esp/esp-idf/components/app_update/Kconfig.projbuild \
	/home/jose/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/home/jose/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/jose/eclipse-workspace/pppos_client/main/Kconfig.projbuild \
	/home/jose/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/home/jose/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_TARGET)" "esp32"
include/config/auto.conf: FORCE
endif
ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
