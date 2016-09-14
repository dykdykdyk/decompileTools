.class final Lcom/tencent/open/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/b;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/tencent/tauth/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/open/d;->c:Ljava/lang/ref/WeakReference;

    .line 141
    iput-object p2, p0, Lcom/tencent/open/d;->d:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/tencent/open/d;->a:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lcom/tencent/open/d;->b:Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/d;->e:Lcom/tencent/tauth/b;

    .line 145
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/tencent/open/d;->e:Lcom/tencent/tauth/b;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/tencent/open/d;->e:Lcom/tencent/tauth/b;

    invoke-interface {v0}, Lcom/tencent/tauth/b;->a()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/d;->e:Lcom/tencent/tauth/b;

    .line 185
    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/tauth/d;)V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 170
    iget-object v0, p1, Lcom/tencent/tauth/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/tencent/tauth/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 171
    :goto_0
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/open/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_H5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v8, p1, Lcom/tencent/tauth/d;->a:I

    move-wide v6, v4

    invoke-virtual/range {v0 .. v9}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJILjava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/tencent/open/d;->e:Lcom/tencent/tauth/b;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/tencent/open/d;->e:Lcom/tencent/tauth/b;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/d;->e:Lcom/tencent/tauth/b;

    .line 177
    :cond_0
    return-void

    .line 170
    :cond_1
    iget-object v9, p0, Lcom/tencent/open/d;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 159
    check-cast p1, Lorg/json/JSONObject;

    .line 160
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/open/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_H5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v6, "ret"

    const/4 v7, -0x6

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iget-object v9, p0, Lcom/tencent/open/d;->a:Ljava/lang/String;

    move-wide v6, v4

    invoke-virtual/range {v0 .. v9}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJILjava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/tencent/open/d;->e:Lcom/tencent/tauth/b;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/tencent/open/d;->e:Lcom/tencent/tauth/b;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/b;->a(Ljava/lang/Object;)V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/d;->e:Lcom/tencent/tauth/b;

    .line 166
    :cond_0
    return-void
.end method
