.class Landroid/support/v4/media/MediaDescriptionCompatApi23$Builder;
.super Landroid/support/v4/media/MediaDescriptionCompatApi21$Builder;
.source "MediaDescriptionCompatApi23.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/media/MediaDescriptionCompatApi21$Builder;-><init>()V

    return-void
.end method

.method public static setMediaUri(Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 28
    check-cast p0, Landroid/media/MediaDescription$Builder;

    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    .line 29
    return-void
.end method
