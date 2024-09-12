import { Controller } from "@hotwired/stimulus"
import Chart from 'chart.js/auto'; // Make sure to import Chart.js

// Connects to data-controller="chart"
export default class extends Controller {
  static values = {
    data: Object,
    options: Object
  }

  connect() {
    this.renderChart()
  }

  renderChart() {
    const ctx = this.element.getContext('2d');

    // Initialize the chart using the data and options passed from the view
    new Chart(ctx, {
      type: 'line', // You can change this to other chart types (e.g., 'bar', 'pie', etc.)
      data: this.dataValue,
      options: this.optionsValue
    });
  }
}
