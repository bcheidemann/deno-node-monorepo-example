import add from "add";

export function getGreeting(name: string): string {
  return `Hello ${name}!\n1 + 2 = ${add([1, 2])}`;
}
