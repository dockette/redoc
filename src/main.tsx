import * as React from 'react';
import { render } from 'react-dom';
import { RedocStandalone } from 'redoc';
import './styles.css'

const DEFAULT_SPEC = 'https://petstore.swagger.io/v2/swagger.json';

class RedocApp extends React.Component<
  Record<string, unknown>,
  { spec: object | undefined; specUrl: string; }
> {
  constructor(props: any) {
    super(props);

    const parts = window.location.search.match(/url=([^&]+)/);
    const url = parts && parts.length > 1 ? decodeURIComponent(parts[1]) : DEFAULT_SPEC;

    this.state = {
      spec: undefined,
      specUrl: url,
    };
  }

  render() {
    const { specUrl } = this.state;
    return (
      <>
        <RedocStandalone
          spec={this.state.spec}
          specUrl={specUrl}
          options={{ scrollYOffset: 'nav', untrustedSpec: true }}
        />
      </>
    );
  }
}

render(<RedocApp />, document.getElementById('root'));
