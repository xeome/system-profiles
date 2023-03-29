`vm.dirty_background_ratio`

This setting controls the percentage of the system's physical memory that can be filled with "dirty" (modified) data before the kernel starts writing the data to disk.

`vm.dirty_ratio`

This setting is similar to vm.dirty_background_ratio, but it specifies the percentage of physical memory that can be filled with dirty data before the kernel _must_ start writing the data to disk. 

`vm.dirty_expire_centisecs`

Sets the amount of time (in hundredths of a second) that dirty pages can remain in memory before the kernel writes them to disk.

`vm.dirty_writeback_centisecs`

Sets the frequency (in hundredths of a second) at which the kernel writes dirty pages to disk.

`kernel.shmmax`

Sets the maximum size of a shared memory segment that can be created.

`kernel.shmall`

Sets the total amount of shared memory that can be used on the system.

`kernel.shmmni`

Sets the maximum number of shared memory segments that can be created on the system.

`kernel.sem`

Sets the maximum number of semaphores that can be used on the system, along with some other parameters that control semaphore behavior.

`fs.file-max`

Sets the maximum number of open files that can exist on the system.

`fs.aio-max-nr`

Sets the maximum number of asynchronous I/O requests that can be queued on the system.

`net.ipv4.ip_local_port_range`

Sets the range of local ports that can be used for network connections.