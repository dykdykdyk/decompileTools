.class final Lcom/nut/blehunter/d;
.super Ljava/lang/Object;
.source "DownloadAsyncTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/c;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/c;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/nut/blehunter/d;->a:Lcom/nut/blehunter/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nut/blehunter/d;->a:Lcom/nut/blehunter/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/c;->cancel(Z)Z

    .line 49
    return-void
.end method
