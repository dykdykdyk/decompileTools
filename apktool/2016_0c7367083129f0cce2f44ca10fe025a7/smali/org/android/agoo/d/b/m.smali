.class final Lorg/android/agoo/d/b/m;
.super Ljava/lang/Object;
.source "DNSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field volatile a:Lorg/android/agoo/d/b/i;

.field final synthetic b:Lorg/android/agoo/d/b/j;

.field private volatile c:Z


# direct methods
.method constructor <init>(Lorg/android/agoo/d/b/j;)V
    .locals 1

    .prologue
    .line 127
    iput-object p1, p0, Lorg/android/agoo/d/b/m;->b:Lorg/android/agoo/d/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/agoo/d/b/m;->c:Z

    .line 129
    sget-object v0, Lorg/android/agoo/d/b/i;->b:Lorg/android/agoo/d/b/i;

    iput-object v0, p0, Lorg/android/agoo/d/b/m;->a:Lorg/android/agoo/d/b/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    :try_start_0
    iget-boolean v0, p0, Lorg/android/agoo/d/b/m;->c:Z

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "DNSManager"

    const-string v1, "DNSRemote[runing....]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    iput-boolean v3, p0, Lorg/android/agoo/d/b/m;->c:Z

    .line 167
    :goto_0
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/android/agoo/d/b/m;->c:Z

    .line 144
    iget-object v0, p0, Lorg/android/agoo/d/b/m;->b:Lorg/android/agoo/d/b/j;

    .line 1031
    iget-object v0, v0, Lorg/android/agoo/d/b/j;->l:Lorg/android/agoo/d/b/i;

    .line 144
    iget-object v1, p0, Lorg/android/agoo/d/b/m;->a:Lorg/android/agoo/d/b/i;

    if-eq v0, v1, :cond_1

    .line 145
    const-string v0, "DNSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currentChannleType["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/android/agoo/d/b/m;->b:Lorg/android/agoo/d/b/j;

    .line 2031
    iget-object v2, v2, Lorg/android/agoo/d/b/j;->l:Lorg/android/agoo/d/b/i;

    .line 3014
    iget-object v2, v2, Lorg/android/agoo/d/b/i;->d:Ljava/lang/String;

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]!=channelType["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/d/b/m;->a:Lorg/android/agoo/d/b/i;

    .line 4014
    iget-object v2, v2, Lorg/android/agoo/d/b/i;->d:Ljava/lang/String;

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lorg/android/agoo/d/b/m;->b:Lorg/android/agoo/d/b/j;

    iget-object v1, p0, Lorg/android/agoo/d/b/m;->a:Lorg/android/agoo/d/b/i;

    .line 4031
    iput-object v1, v0, Lorg/android/agoo/d/b/j;->l:Lorg/android/agoo/d/b/i;

    .line 152
    iget-object v0, p0, Lorg/android/agoo/d/b/m;->b:Lorg/android/agoo/d/b/j;

    invoke-static {v0}, Lorg/android/agoo/d/b/j;->a(Lorg/android/agoo/d/b/j;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    iput-boolean v3, p0, Lorg/android/agoo/d/b/m;->c:Z

    goto :goto_0

    .line 155
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/android/agoo/d/b/m;->b:Lorg/android/agoo/d/b/j;

    invoke-virtual {v0}, Lorg/android/agoo/d/b/j;->a()Z

    move-result v0

    .line 156
    if-eqz v0, :cond_2

    .line 157
    const-string v0, "DNSManager"

    const-string v1, "refreshLocalHost successfully"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    iput-boolean v3, p0, Lorg/android/agoo/d/b/m;->c:Z

    goto :goto_0

    .line 160
    :cond_2
    :try_start_3
    iget-object v0, p0, Lorg/android/agoo/d/b/m;->b:Lorg/android/agoo/d/b/j;

    invoke-static {v0}, Lorg/android/agoo/d/b/j;->a(Lorg/android/agoo/d/b/j;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    iput-boolean v3, p0, Lorg/android/agoo/d/b/m;->c:Z

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    :try_start_4
    const-string v1, "DNSManager"

    const-string v2, "host Throwable"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    iget-object v0, p0, Lorg/android/agoo/d/b/m;->b:Lorg/android/agoo/d/b/j;

    sget-object v1, Lorg/android/agoo/d/b/b;->s:Lorg/android/agoo/d/b/b;

    invoke-virtual {v0, v1}, Lorg/android/agoo/d/b/j;->a(Lorg/android/agoo/d/b/b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 166
    iput-boolean v3, p0, Lorg/android/agoo/d/b/m;->c:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lorg/android/agoo/d/b/m;->c:Z

    throw v0
.end method
