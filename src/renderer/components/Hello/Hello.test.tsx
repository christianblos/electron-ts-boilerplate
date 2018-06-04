import React from 'react';
import TestRenderer from 'react-test-renderer';
import {Hello} from './Hello';

test('See hello', () => {
    const component = TestRenderer.create(
        <Hello/>,
    );

    let tree = JSON.stringify(component.toJSON());

    expect(tree).toMatch(/Hello.*Electron!/);
});
