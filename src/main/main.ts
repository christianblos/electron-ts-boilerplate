import {app, BrowserWindow} from 'electron';
import {isDev} from '../shared/app/isDev';

let win: BrowserWindow | null;

function createWindow(): void {
    win = new BrowserWindow({width: 1000, height: 800});

    const url = isDev()
        ? `http://localhost:${process.env.DEV_SERVER_PORT}`
        : `file://${__dirname}/index.html`;

    win.loadURL(url);

    // Emitted when the window is closed.
    win.on('closed', () => {
        // Dereference the window object, usually you would store windows
        // in an array if your app supports multi windows, this is the time
        // when you should delete the corresponding element.
        win = null;
    });

    //win.webContents.openDevTools();
}

app.on('ready', createWindow);

// Quit when all windows are closed.
app.on('window-all-closed', () => {
    // On macOS it is common for applications and their menu bar
    // to stay active until the user quits explicitly with Cmd + Q
    if (process.platform !== 'darwin') {
        app.quit();
    }
});

app.on('activate', () => {
    // On macOS it's common to re-create a window in the app when the
    // dock icon is clicked and there are no other windows open.
    if (win === null) {
        createWindow();
    }
});
