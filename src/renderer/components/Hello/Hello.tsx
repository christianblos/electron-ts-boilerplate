import * as React from 'react';
import img from './electron.png';
import styles from './HelloStyles.scss';

export class Hello extends React.Component<{}, {}> {

    render() {
        return (
            <div className={styles.center}>
                <div className={styles.hello}>
                    Hello <span>Electron!</span>
                </div>
                <div>
                    <img src={img}/>
                </div>
            </div>
        );
    }
}
