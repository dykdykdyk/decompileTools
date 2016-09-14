.class final Lorg/android/agoo/d/b/e;
.super Ljava/lang/Object;
.source "ChannelManager.java"

# interfaces
.implements Lorg/android/agoo/d/b/l;


# instance fields
.field final synthetic a:Lorg/android/agoo/d/b/d;


# direct methods
.method constructor <init>(Lorg/android/agoo/d/b/d;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lorg/android/agoo/d/b/e;->a:Lorg/android/agoo/d/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/android/agoo/d/b/b;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/android/agoo/d/b/e;->a:Lorg/android/agoo/d/b/d;

    invoke-static {v0}, Lorg/android/agoo/d/b/d;->a(Lorg/android/agoo/d/b/d;)Z

    .line 88
    iget-object v0, p0, Lorg/android/agoo/d/b/e;->a:Lorg/android/agoo/d/b/d;

    invoke-static {v0, p1}, Lorg/android/agoo/d/b/d;->a(Lorg/android/agoo/d/b/d;Lorg/android/agoo/d/b/b;)V

    .line 89
    return-void
.end method

.method public final a(Lorg/android/agoo/d/b/i;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 70
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p3, :cond_0

    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/android/agoo/d/b/d;->a(Z)Z

    .line 72
    iget-object v0, p0, Lorg/android/agoo/d/b/e;->a:Lorg/android/agoo/d/b/d;

    invoke-static {v0, p2}, Lorg/android/agoo/d/b/d;->a(Lorg/android/agoo/d/b/d;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lorg/android/agoo/d/b/e;->a:Lorg/android/agoo/d/b/d;

    invoke-static {v0, p3}, Lorg/android/agoo/d/b/d;->a(Lorg/android/agoo/d/b/d;I)I

    .line 74
    invoke-static {p1}, Lorg/android/agoo/d/b/d;->a(Lorg/android/agoo/d/b/i;)Lorg/android/agoo/d/b/i;

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/android/agoo/d/b/e;->a:Lorg/android/agoo/d/b/d;

    invoke-virtual {v0}, Lorg/android/agoo/d/b/d;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    iget-object v0, p0, Lorg/android/agoo/d/b/e;->a:Lorg/android/agoo/d/b/d;

    invoke-static {v0}, Lorg/android/agoo/d/b/d;->a(Lorg/android/agoo/d/b/d;)Z

    .line 83
    return-void

    .line 78
    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/android/agoo/d/b/e;->a:Lorg/android/agoo/d/b/d;

    sget-object v1, Lorg/android/agoo/d/b/b;->y:Lorg/android/agoo/d/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "host ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lorg/android/agoo/d/b/d;->a(Lorg/android/agoo/d/b/d;Lorg/android/agoo/d/b/b;)V

    goto :goto_0
.end method
