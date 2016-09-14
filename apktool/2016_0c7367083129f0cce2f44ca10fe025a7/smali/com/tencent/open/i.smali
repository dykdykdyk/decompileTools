.class public abstract Lcom/tencent/open/i;
.super Landroid/app/Dialog;
.source "ProGuard"


# instance fields
.field protected c:Lcom/tencent/open/f;

.field protected final d:Landroid/webkit/WebChromeClient;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 34
    new-instance v0, Lcom/tencent/open/j;

    invoke-direct {v0, p0}, Lcom/tencent/open/j;-><init>(Lcom/tencent/open/i;)V

    iput-object v0, p0, Lcom/tencent/open/i;->d:Landroid/webkit/WebChromeClient;

    .line 24
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v0, Lcom/tencent/open/f;

    invoke-direct {v0}, Lcom/tencent/open/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/i;->c:Lcom/tencent/open/f;

    .line 30
    return-void
.end method
