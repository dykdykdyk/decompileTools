.class final Lcom/soundcloud/android/crop/m;
.super Ljava/lang/Object;
.source "CropUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/soundcloud/android/crop/l;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/l;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/soundcloud/android/crop/m;->a:Lcom/soundcloud/android/crop/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->a:Lcom/soundcloud/android/crop/l;

    .line 1188
    iget-object v0, v0, Lcom/soundcloud/android/crop/l;->a:Lcom/soundcloud/android/crop/w;

    .line 201
    iget-object v1, p0, Lcom/soundcloud/android/crop/m;->a:Lcom/soundcloud/android/crop/l;

    invoke-virtual {v0, v1}, Lcom/soundcloud/android/crop/w;->a(Lcom/soundcloud/android/crop/y;)V

    .line 202
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->a:Lcom/soundcloud/android/crop/l;

    .line 2188
    iget-object v0, v0, Lcom/soundcloud/android/crop/l;->b:Landroid/app/ProgressDialog;

    .line 202
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->a:Lcom/soundcloud/android/crop/l;

    .line 3188
    iget-object v0, v0, Lcom/soundcloud/android/crop/l;->b:Landroid/app/ProgressDialog;

    .line 203
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 205
    :cond_0
    return-void
.end method
