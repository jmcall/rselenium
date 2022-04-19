library(RSelenium)

fprof <- makeFirefoxProfile(list(browser.download.folderList = 2L, browser.download.dir = "home/seluser/Downloads",
                                 pdfjs.disabled = TRUE,
                                 plugin.scan.plid.all = FALSE,
                                 plugin.scan.Acrobat = "99.0",
                                 browser.download.manager.showWhenStarting = FALSE,
                                 browser.helperApps.alwaysAsk.force = FALSE,
                                 browser.download.manager.showWhenStarting = FALSE,
                                 browser.helperApps.neverAsk.openFile = "application/pdf,application/vnd.ms-excel,application/csv, text/csv, text/plain,application/octet-stream doc xls pdf txt",
                                 browser.helperApps.neverAsk.saveToDisk = "application/pdf,application/vnd.ms-excel,application/csv, text/csv, text/plain,application/octet-stream doc xls pdf txt"))

remDr <- RSelenium::remoteDriver(remoteServerAddr = "localhost",
                                 port = 4444L,
                                 browserName = "firefox",
                                 extraCapabilities = fprof)

remDr$open(silent = TRUE)

