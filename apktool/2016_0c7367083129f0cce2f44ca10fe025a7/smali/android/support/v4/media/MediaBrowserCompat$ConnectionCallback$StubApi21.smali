.class Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/support/v4/media/MediaBrowserCompat$1;)V
    .locals 0

    .prologue
    .line 513
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;-><init>(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;)V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackInternal:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->access$200(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackInternal:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->access$200(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;->onConnected()V

    .line 519
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnected()V

    .line 520
    return-void
.end method

.method public onConnectionFailed()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackInternal:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->access$200(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackInternal:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->access$200(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;->onConnectionFailed()V

    .line 535
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionFailed()V

    .line 536
    return-void
.end method

.method public onConnectionSuspended()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackInternal:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->access$200(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackInternal:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->access$200(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;->onConnectionSuspended()V

    .line 527
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionSuspended()V

    .line 528
    return-void
.end method
