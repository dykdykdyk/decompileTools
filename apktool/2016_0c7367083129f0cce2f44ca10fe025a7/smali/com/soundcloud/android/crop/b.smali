.class final Lcom/soundcloud/android/crop/b;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Lcom/soundcloud/android/crop/u;


# instance fields
.field final synthetic a:Lcom/soundcloud/android/crop/CropImageActivity;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/CropImageActivity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/soundcloud/android/crop/b;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 109
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 110
    return-void
.end method
