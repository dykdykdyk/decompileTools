.class final Lcom/soundcloud/android/crop/g;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/soundcloud/android/crop/CropImageActivity;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/CropImageActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/soundcloud/android/crop/g;->b:Lcom/soundcloud/android/crop/CropImageActivity;

    iput-object p2, p0, Lcom/soundcloud/android/crop/g;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/soundcloud/android/crop/g;->b:Lcom/soundcloud/android/crop/CropImageActivity;

    iget-object v1, p0, Lcom/soundcloud/android/crop/g;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/soundcloud/android/crop/CropImageActivity;->a(Lcom/soundcloud/android/crop/CropImageActivity;Landroid/graphics/Bitmap;)V

    .line 328
    return-void
.end method
