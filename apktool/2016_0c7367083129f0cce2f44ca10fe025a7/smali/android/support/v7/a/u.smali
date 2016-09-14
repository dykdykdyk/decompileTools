.class public abstract Landroid/support/v7/a/u;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# static fields
.field static a:I

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, -0x1

    sput v0, Landroid/support/v7/a/u;->a:I

    .line 130
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v7/a/u;->b:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v7/a/t;)Landroid/support/v7/a/u;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/support/v7/a/u;->a(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/t;)Landroid/support/v7/a/u;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Dialog;Landroid/support/v7/a/t;)Landroid/support/v7/a/u;
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/support/v7/a/u;->a(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/t;)Landroid/support/v7/a/u;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/t;)Landroid/support/v7/a/u;
    .locals 2

    .prologue
    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 196
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    new-instance v0, Landroid/support/v7/a/y;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/a/y;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/t;)V

    .line 205
    :goto_0
    return-object v0

    .line 198
    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 199
    new-instance v0, Landroid/support/v7/a/af;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/a/af;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/t;)V

    goto :goto_0

    .line 200
    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 201
    new-instance v0, Landroid/support/v7/a/ab;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/a/ab;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/t;)V

    goto :goto_0

    .line 202
    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 203
    new-instance v0, Landroid/support/v7/a/aa;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/a/aa;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/t;)V

    goto :goto_0

    .line 205
    :cond_3
    new-instance v0, Landroid/support/v7/a/ah;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/a/ah;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/t;)V

    goto :goto_0
.end method

.method public static k()Z
    .locals 1

    .prologue
    .line 535
    sget-boolean v0, Landroid/support/v7/a/u;->b:Z

    return v0
.end method


# virtual methods
.method public abstract a()Landroid/support/v7/a/a;
.end method

.method public abstract a(I)Landroid/view/View;
.end method

.method public abstract a(Landroid/content/res/Configuration;)V
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public abstract a(Landroid/support/v7/widget/Toolbar;)V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
.end method

.method public abstract b()Landroid/view/MenuInflater;
.end method

.method public abstract b(I)V
.end method

.method public abstract b(Landroid/os/Bundle;)V
.end method

.method public abstract b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract c()V
.end method

.method public abstract c(I)Z
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method

.method public abstract j()Z
.end method
