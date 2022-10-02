import React from 'react';
import './App.css';
import {
  BrowserRouter as Router,
  Switch,
  Route,
} from "react-router-dom";

import { Omikuji } from './containers/Omikuji.jsx'

function App() {
return (
  <Router>
    <Switch>
      <Route
        exact
        path="/omikuji">
        <Omikuji />
      </Route>
    </Switch>
  </Router>
);
}

export default App;
