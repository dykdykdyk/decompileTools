.class Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public getBrowserRootHints()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24;->getBrowserRootHints(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 359
    if-nez p2, :cond_0

    .line 360
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->notifyChildrenChanged(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24;->notifyChildrenChanged(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24;->createService(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;->mServiceObj:Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->onCreate(Ljava/lang/Object;)V

    .line 355
    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 370
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;)V

    .line 391
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {v1, p1, v0, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V

    .line 392
    return-void
.end method
