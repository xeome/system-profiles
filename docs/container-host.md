`vm.dirty_background_ratio`

Controls the percentage of the system's physical memory that can be filled with "dirty" (modified) data before the kernel starts writing the data to disk. Setting this to 0 means that the kernel will start flushing dirty data to disk immediately, which can reduce the likelihood of large I/O spikes that can affect PostgreSQL's performance.

`vm.dirty_ratio`

Similar to vm.dirty_background_ratio, but it specifies the percentage of physical memory that can be filled with dirty data before the kernel _must_ start writing the data to disk. Like vm.dirty_background_ratio, setting this to 0 can help prevent large I/O spikes.

`net.ipv4.ip_forward`

Controls whether the host machine can forward packets to other machines. If you are running a PostgreSQL cluster in a container, you should set this to 0 to prevent the container from being used as a router.

`net.ipv4.ip_forward`

Enables IP forwarding in the kernel, which allows packets to be forwarded between different network interfaces. This is useful for routing traffic between networks and is commonly used in networking scenarios such as routers and gateways.

`kernel.pid_max`

Sets the maximum process ID number that can be assigned to a process on the system. The default value is usually 32768, but this can be increased to allow for more processes to be running on the system. The maximum value for this parameter is 4194303.

`fs.aio-max-nr`

Sets the maximum number of outstanding asynchronous I/O requests that can be pending on the system at any given time. Asynchronous I/O allows processes to initiate I/O operations without waiting for them to complete, which can improve performance. This parameter sets a limit on the number of these operations that can be active at any given time.

`net.netfilter.nf_conntrack_max`

Sets the maximum number of connection tracking entries available for the Netfilter subsystem in the Linux kernel. A connection tracking entry is created for every new connection that passes through the firewall. The default value is usually 65536. Increasing this value can be useful in high-traffic environments where the firewall needs to track a large number of connections.

`net.ipv4.conf.all.arp_announce`

Controls the behavior of the ARP protocol in the Linux kernel. When set to 2, the kernel will always use the source IP address and MAC address of the outgoing interface when sending ARP requests. This can be useful in certain network configurations where ARP requests need to be sent from a specific IP address or interface.

`net.ipv4.neigh.default.gc_thresh1`

Sets the minimum number of neighbor entries that must be present before the garbage collector starts cleaning up old entries. The garbage collector removes old entries to free up memory. The default value is usually 128. Increasing this value can be useful in environments with a large number of neighbors.

`net.ipv4.neigh.default.gc_thresh2`

Sets the soft maximum number of neighbor entries allowed. When the number of entries exceeds this value, the garbage collector will start aggressively removing old entries. The default value is usually 512. Increasing this value can be useful in environments with a large number of neighbors.

`net.ipv4.neigh.default.gc_thresh3`

Sets the hard maximum number of neighbor entries allowed. When the number of entries exceeds this value, the garbage collector will immediately start removing old entries. The default value is usually 1024. Increasing this value can be useful in environments with a very large number of neighbors.

`net.ipv6.neigh.default.gc_thresh1` and `net.ipv6.neigh.default.gc_thresh2` and `net.ipv6.neigh.default.gc_thresh3`

Similar to the previous three parameters, but they control the behavior of the garbage collector for IPv6 neighbor entries.

`vm.max_map_count`

Sets the maximum number of memory map areas a process can have. The default value is usually 65530. Increasing this value can be useful in environments where a large number of memory map areas are required.