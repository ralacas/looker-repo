# The name of this view in Looker is "Sales Data"
view: sales_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `sales_dummy.sales_data` ;;
  drill_fields: [state]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: state {
    primary_key: yes
    type: string
    sql: ${TABLE}.state ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Active Tickets" in Explore.

  dimension: active_tickets {
    type: number
    sql: ${TABLE}.active_tickets ;;
  }

  dimension: client_type {
    type: string
    sql: ${TABLE}.client_type ;;
  }

  dimension: clients {
    type: number
    sql: ${TABLE}.clients ;;
  }

  dimension: closed_tickets {
    type: number
    sql: ${TABLE}.closed_tickets ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.unit_price ;;
  }
  measure: count {
    type: count
    drill_fields: [state]
  }
}
