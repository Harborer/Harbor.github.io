import React from 'react';
import ReactDOM from 'react-dom';
 
class App extends React.Component {
  render() {
    $("#uhh").click(function () {
        $(".slide").toggle();
    });
    return (
        <div className='page'>
            <h1>Harborer History Division</h1>
        </div>
    );
  }
};
 
ReactDOM.render(
  <App />,
  document.getElementById('app')
);