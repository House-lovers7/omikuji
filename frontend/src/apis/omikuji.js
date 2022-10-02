import axios from 'axios';
import { omikujiIndex } from '../urls/index'

export const fetchOmikujis =() => {
  return axios.get( omikujiIndex)
  .then(res => {
    return res.data
  })
  .catch((e) => console.error(e))
}
