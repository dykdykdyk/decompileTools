.class final Lcom/google/firebase/iid/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/google/firebase/iid/c;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/c;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/iid/e;->b:Lcom/google/firebase/iid/c;

    iput-object p2, p0, Lcom/google/firebase/iid/e;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/iid/e;->b:Lcom/google/firebase/iid/c;

    iget-object v1, p0, Lcom/google/firebase/iid/e;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/c;->b(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/firebase/iid/e;->b:Lcom/google/firebase/iid/c;

    invoke-virtual {v0}, Lcom/google/firebase/iid/c;->c()V

    return-void
.end method
