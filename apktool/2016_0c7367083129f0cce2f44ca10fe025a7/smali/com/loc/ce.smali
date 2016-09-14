.class final Lcom/loc/ce;
.super Ljava/lang/Object;
.source "ConnectionServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/loc/ch;

.field final synthetic b:Lcom/loc/cd;


# direct methods
.method constructor <init>(Lcom/loc/cd;Lcom/loc/ch;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ce;->b:Lcom/loc/cd;

    iput-object p2, p0, Lcom/loc/ce;->a:Lcom/loc/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/loc/ce;->b:Lcom/loc/cd;

    invoke-static {p2}, Lcom/loc/dv;->a(Landroid/os/IBinder;)Lcom/loc/du;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/cd;->a(Lcom/loc/cd;Lcom/loc/du;)Lcom/loc/du;

    iget-object v0, p0, Lcom/loc/ce;->a:Lcom/loc/ch;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/loc/ch;->a(I)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/loc/ce;->b:Lcom/loc/cd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/cd;->a(Lcom/loc/cd;Lcom/loc/du;)Lcom/loc/du;

    return-void
.end method
