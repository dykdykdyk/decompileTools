.class public final Lcom/umeng/analytics/af;
.super Ljava/lang/Object;
.source "StoreHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/umeng/analytics/ae;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/ae;I)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/umeng/analytics/af;->b:Lcom/umeng/analytics/ae;

    iput p2, p0, Lcom/umeng/analytics/af;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 363
    iget v0, p0, Lcom/umeng/analytics/af;->a:I

    if-lez v0, :cond_0

    .line 364
    invoke-static {}, Lcom/umeng/analytics/aa;->i()Landroid/content/Context;

    move-result-object v0

    .line 1129
    sput-object v0, Lu/aly/ej;->f:Landroid/content/Context;

    .line 1130
    invoke-static {}, Lu/aly/ev;->a()Lu/aly/ej;

    move-result-object v1

    .line 364
    iget v0, p0, Lcom/umeng/analytics/af;->a:I

    int-to-long v2, v0

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "__evp_file_of"

    .line 364
    invoke-virtual/range {v1 .. v6}, Lu/aly/ej;->a(JJLjava/lang/String;)V

    .line 368
    :cond_0
    return-void
.end method
