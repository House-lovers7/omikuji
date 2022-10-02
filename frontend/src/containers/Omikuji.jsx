import React, { Fragment, useEffect } from 'react';
import { fetchOmikujis } from '../apis/omikuji';

export const Omikuji = () => {
  useEffect(() => {
    fetchOmikujis()
    .then((data) =>
      console.log(data)
    )
  }, [])
  return (
    <Fragment>
      おみくじ一覧
    </Fragment>
  )
}
