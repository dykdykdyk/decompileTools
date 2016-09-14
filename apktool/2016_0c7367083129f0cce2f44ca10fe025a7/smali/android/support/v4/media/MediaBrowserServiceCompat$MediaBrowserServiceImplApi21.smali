.class Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;
.implements Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;


# instance fields
.field mMessenger:Landroid/os/Messenger;

.field mServiceObj:Ljava/lang/Object;

.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrowserRootHints()Landroid/os/Bundle;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 254
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mMessenger:Landroid/os/Messenger;

    if-nez v1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-object v0

    .line 258
    :cond_1
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$400(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    move-result-object v1

    if-nez v1, :cond_2

    .line 259
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be called inside of onLoadChildren or onLoadItem methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_2
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$400(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->rootHints:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$400(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->rootHints:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->notifyChildrenChanged(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->onBind(Ljava/lang/Object;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->createService(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mServiceObj:Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->onCreate(Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompatApi21$BrowserRoot;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 268
    .line 269
    if-eqz p3, :cond_3

    const-string v0, "extra_client_version"

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    const-string v0, "extra_client_version"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 271
    new-instance v0, Landroid/os/Messenger;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;
    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mMessenger:Landroid/os/Messenger;

    .line 272
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 273
    const-string v2, "extra_service_version"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 274
    const-string v2, "extra_messenger"

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/support/v4/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 276
    :goto_0
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {v2, p1, p2, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    move-result-object v2

    .line 278
    if-nez v2, :cond_0

    .line 287
    :goto_1
    return-object v1

    .line 281
    :cond_0
    if-nez v0, :cond_2

    .line 282
    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 286
    :cond_1
    :goto_2
    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$BrowserRoot;

    .line 287
    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 283
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 284
    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 293
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V

    .line 314
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V

    .line 315
    return-void
.end method

.method public setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mServiceObj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->setSessionToken(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    return-void
.end method
