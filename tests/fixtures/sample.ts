// tests/fixtures/sample.ts
interface PaymentRequest {
  amount: number;
  currency: string;
  shippingOption?: string;
}

class PaymentProcessor {
  private client: PaymentRequestUpdateEvent;

  async charge(req: PaymentRequest): Promise<Response> {
    const controller = new AbortController();
    const res = await fetch("/api/charge", {
      method: "POST",
      body: JSON.stringify(req),
      signal: controller.signal,
    });

    if (!res.ok) {
      throw new Error(`Payment failed: ${res.status}`);
    }

    return res;
  }
}

export const symbol: unique symbol = Symbol("payment");
export type Status = "pending" | "success" | "failed";
