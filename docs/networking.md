`net.core.netdev_max_backlog`

This setting controls the maximum number of packets that can be queued on the input side of a network interface. The default value is 1000. Increasing this value may improve performance in high-throughput network scenarios, but may also increase memory usage.

`net.core.somaxconn`

This setting controls the maximum number of pending connections that can be queued for a listening socket. The default value is 128. Increasing this value may improve performance in high-traffic scenarios.

`net.ipv4.tcp_rmem` and `net.ipv4.tcp_wmem`

These settings control the default and maximum sizes of the receive and send buffers used by TCP connections. The values are specified as three integers separated by spaces, representing the minimum size, default size, and maximum size of the buffer in bytes. The default values are typically sufficient for most use cases, but increasing them may improve performance in certain scenarios.

`net.core.rmem_default` and `net.core.rmem_max`

These settings control the default and maximum sizes of the receive buffer used by all network sockets. The values are specified in bytes. Increasing these values may improve performance in scenarios with high network throughput.

`net.core.wmem_default` and `net.core.wmem_max`

These settings control the default and maximum sizes of the send buffer used by all network sockets. The values are specified in bytes. Increasing these values may improve performance in scenarios with high network throughput.

`net.core.optmem_max`

This setting controls the maximum size of the socket buffer used for socket options. The value is specified in bytes. Increasing this value may improve performance in scenarios where many socket options are used.

`net.ipv4.tcp_adv_win_scale`

This setting controls the scaling factor used to calculate the TCP window size. The default value is 0, which means that the window size is not scaled. Setting this value to a negative number may improve performance in scenarios with high network latency.

`net.ipv4.tcp_collapse_max_bytes`

This setting controls the maximum size of data that can be sent in a single TCP segment. The default value is 1 MB. Increasing this value may improve performance in scenarios with high network throughput.

`net.ipv4.tcp_notsent_lowat`

This setting controls the minimum amount of unsent data that must be present before TCP will send a segment. The default value is 2048 bytes. Decreasing this value may improve performance in scenarios with high network throughput.

`net.ipv4.udp_rmem_min` and `net.ipv4.udp_wmem_min`

These settings control the minimum sizes of the receive and send buffers used

`net.ipv4.tcp_mtu_probing`

This sysctl option enables Path MTU Discovery (PMTUD) for TCP connections, allowing TCP to automatically discover the Maximum Transmission Unit (MTU) of the path between two hosts.

`net.core.default_qdisc`

This sysctl option sets the default queuing discipline (qdisc) for network interfaces to Cake, which is a new generation network queue management algorithm that offers better network performance and reduces latency for interactive traffic.

`net.ipv4.tcp_congestion_control`

This sysctl option sets the TCP congestion control algorithm to BBR (Bottleneck Bandwidth and RTT), which is a new TCP congestion control algorithm that aims to optimize network utilization and reduce latency.

`net.ipv4.tcp_tw_reuse`

This sysctl option enables reuse of TIME_WAIT sockets, which are sockets in the TIME_WAIT state that are waiting for all packets to be delivered before closing. This can help reduce the number of sockets in the TIME_WAIT state and improve system performance.