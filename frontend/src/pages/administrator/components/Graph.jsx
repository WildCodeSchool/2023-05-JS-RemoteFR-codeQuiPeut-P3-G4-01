import React, { useEffect, useState } from "react"
import BarChart from "./BarChart"

function Graph({ orders }) {
  const [chartData, setChartData] = useState({
    labels: [],
    datasets: [
      {
        label: "Quantité vendue",
        data: [],
        backgroundColor: "rgba(75, 192, 192, 0.6)",
        borderColor: "rgba(75, 192, 192, 1)",
        borderWidth: 1,
      },
    ],
  })

  function aggregateData(data) {
    const aggregated = data.reduce((acc, order) => {
      console.log(acc)
      // acc is accumulator, the aggregated object
      const productsName = order.name
      if (acc[productsName]) {
        acc[productsName] += order.quantity // Sum up the quantities if the user exists
      } else {
        acc[productsName] = order.quantity // Initialize the quantity if the user does not exist
      }
      return acc
    }, {})

    const productNames = Object.keys(aggregated)
    const quantities = Object.values(aggregated)

    return {
      labels: productNames,
      datasets: [
        {
          ...chartData.datasets[0],
          data: quantities,
        },
      ],
    }
  }

  useEffect(() => {
    if (orders && orders.length) {
      const processedData = aggregateData(orders)
      setChartData(processedData)
    }
  }, [orders])

  return (
    <div>
      <BarChart data={chartData} />
    </div>
  )
}

export default Graph
