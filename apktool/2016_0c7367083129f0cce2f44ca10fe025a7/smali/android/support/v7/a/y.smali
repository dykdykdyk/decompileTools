.class final Landroid/support/v7/a/y;
.super Landroid/support/v7/a/af;
.source "AppCompatDelegateImplN.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/t;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/a/af;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/t;)V

    .line 30
    return-void
.end method


# virtual methods
.method final a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Landroid/support/v7/a/z;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/a/z;-><init>(Landroid/support/v7/a/y;Landroid/view/Window$Callback;)V

    return-object v0
.end method
