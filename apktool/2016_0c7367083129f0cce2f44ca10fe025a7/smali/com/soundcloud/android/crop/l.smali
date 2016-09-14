.class final Lcom/soundcloud/android/crop/l;
.super Lcom/soundcloud/android/crop/x;
.source "CropUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/soundcloud/android/crop/w;

.field final b:Landroid/app/ProgressDialog;

.field private final c:Ljava/lang/Runnable;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/soundcloud/android/crop/w;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/soundcloud/android/crop/x;-><init>()V

    .line 199
    new-instance v0, Lcom/soundcloud/android/crop/m;

    invoke-direct {v0, p0}, Lcom/soundcloud/android/crop/m;-><init>(Lcom/soundcloud/android/crop/l;)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/l;->e:Ljava/lang/Runnable;

    .line 210
    iput-object p1, p0, Lcom/soundcloud/android/crop/l;->a:Lcom/soundcloud/android/crop/w;

    .line 211
    iput-object p3, p0, Lcom/soundcloud/android/crop/l;->b:Landroid/app/ProgressDialog;

    .line 212
    iput-object p2, p0, Lcom/soundcloud/android/crop/l;->c:Ljava/lang/Runnable;

    .line 213
    iget-object v0, p0, Lcom/soundcloud/android/crop/l;->a:Lcom/soundcloud/android/crop/w;

    invoke-virtual {v0, p0}, Lcom/soundcloud/android/crop/w;->b(Lcom/soundcloud/android/crop/y;)V

    .line 214
    iput-object p4, p0, Lcom/soundcloud/android/crop/l;->d:Landroid/os/Handler;

    .line 215
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/soundcloud/android/crop/l;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 230
    iget-object v0, p0, Lcom/soundcloud/android/crop/l;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/soundcloud/android/crop/l;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/soundcloud/android/crop/l;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 236
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/soundcloud/android/crop/l;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 241
    return-void
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/l;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    iget-object v0, p0, Lcom/soundcloud/android/crop/l;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/soundcloud/android/crop/l;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    return-void

    .line 221
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/soundcloud/android/crop/l;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/soundcloud/android/crop/l;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
