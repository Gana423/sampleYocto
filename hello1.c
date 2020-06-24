#include <linux/module.h>	/* Needed by all modules */
#include <linux/kernel.h>	/* Needed for KERN_ALERT */

#define DRIVER_AUTHOR "Gana"

MODULE_LICENSE("GPL");
MODULE_AUTHOR(DRIVER_AUTHOR);

module(void)
{
  
  printk("<1>Hello world 1.\n");
  return 0;
}

cmodule(void)
{
  printk(KERN_ALERT "Goodbye world 1.\n");
}

module_init(module);
module_cleanup(cmodule);
