import React, {SFC} from 'react';
import img from './electron.png';
import styles from './HelloStyles.scss';

type Props = {};

export const Hello: SFC<Props> = () => (
    <div className={styles.center}>
        <div className={styles.hello}>
            Hello <span>Electron!</span>
        </div>
        <div>
            <img src={img}/>
        </div>
    </div>
);
