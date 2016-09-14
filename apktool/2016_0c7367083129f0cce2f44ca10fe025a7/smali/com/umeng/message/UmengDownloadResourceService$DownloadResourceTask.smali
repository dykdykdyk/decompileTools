.class public Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;
.super Landroid/os/AsyncTask;
.source "UmengDownloadResourceService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/umeng/message/a/a;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field final synthetic d:Lcom/umeng/message/UmengDownloadResourceService;


# direct methods
.method public constructor <init>(Lcom/umeng/message/UmengDownloadResourceService;Lcom/umeng/message/a/a;I)V
    .locals 2

    .prologue
    .line 184
    iput-object p1, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 185
    iput-object p2, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->a:Lcom/umeng/message/a/a;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->b:Ljava/util/ArrayList;

    .line 187
    invoke-virtual {p2}, Lcom/umeng/message/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->b:Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/umeng/message/a/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    invoke-virtual {p2}, Lcom/umeng/message/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->b:Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/umeng/message/a/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_1
    iput p3, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->c:I

    .line 192
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 178
    .line 2198
    const/4 v0, 0x1

    .line 2199
    iget-object v1, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2201
    invoke-virtual {p0, v0}, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->download(Ljava/lang/String;)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    .line 2202
    goto :goto_0

    .line 2204
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 178
    return-object v0
.end method

.method public download(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 280
    :goto_0
    return v0

    .line 241
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    iget-object v4, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->d:Lcom/umeng/message/UmengDownloadResourceService;

    iget-object v4, v4, Lcom/umeng/message/UmengDownloadResourceService;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->a:Lcom/umeng/message/a/a;

    invoke-static {v4, v5}, Lcom/umeng/message/UmengDownloadResourceService;->getMessageResourceFolder(Landroid/content/Context;Lcom/umeng/message/a/a;)Ljava/lang/String;

    move-result-object v4

    .line 244
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    iget-object v1, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-virtual {v1, v2}, Lcom/umeng/message/UmengDownloadResourceService;->close(Ljava/io/Closeable;)V

    .line 278
    iget-object v1, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-virtual {v1, v2}, Lcom/umeng/message/UmengDownloadResourceService;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 249
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 251
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 253
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 254
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 258
    :cond_3
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v3

    .line 259
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 260
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 262
    const/16 v2, 0x2800

    :try_start_3
    new-array v2, v2, [B

    .line 264
    :goto_1
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_4

    .line 266
    const/4 v8, 0x0

    invoke-virtual {v3, v2, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 275
    :catch_0
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 277
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-virtual {v0, v3}, Lcom/umeng/message/UmengDownloadResourceService;->close(Ljava/io/Closeable;)V

    .line 278
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-virtual {v0, v2}, Lcom/umeng/message/UmengDownloadResourceService;->close(Ljava/io/Closeable;)V

    move v0, v1

    .line 280
    goto/16 :goto_0

    .line 269
    :cond_4
    :try_start_5
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 277
    iget-object v1, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-virtual {v1, v4}, Lcom/umeng/message/UmengDownloadResourceService;->close(Ljava/io/Closeable;)V

    .line 278
    iget-object v1, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-virtual {v1, v3}, Lcom/umeng/message/UmengDownloadResourceService;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 277
    :catchall_0
    move-exception v0

    move-object v4, v2

    :goto_3
    iget-object v1, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-virtual {v1, v4}, Lcom/umeng/message/UmengDownloadResourceService;->close(Ljava/io/Closeable;)V

    .line 278
    iget-object v1, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-virtual {v1, v2}, Lcom/umeng/message/UmengDownloadResourceService;->close(Ljava/io/Closeable;)V

    throw v0

    .line 277
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v4, v3

    goto :goto_3

    .line 275
    :catch_1
    move-exception v0

    move-object v3, v2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v3, v4

    goto :goto_2
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 178
    check-cast p1, Ljava/lang/Boolean;

    .line 1211
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1212
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->d:Lcom/umeng/message/UmengDownloadResourceService;

    iget-object v0, v0, Lcom/umeng/message/UmengDownloadResourceService;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->a:Lcom/umeng/message/a/a;

    iget-object v1, v1, Lcom/umeng/message/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1213
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->c:I

    if-gtz v0, :cond_2

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->d:Lcom/umeng/message/UmengDownloadResourceService;

    iget-object v0, v0, Lcom/umeng/message/UmengDownloadResourceService;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->a:Lcom/umeng/message/a/a;

    iget-object v1, v1, Lcom/umeng/message/a/a;->a:Ljava/lang/String;

    .line 1635
    iget-object v0, v0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    .line 1636
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "KEY_MSG_RESOURCE_DOWNLOAD_PREFIX"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1637
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1639
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1217
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->a:Lcom/umeng/message/a/a;

    .line 2158
    iget-object v0, v0, Lcom/umeng/message/a/a;->v:Lorg/json/JSONObject;

    .line 1217
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1218
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->d:Lcom/umeng/message/UmengDownloadResourceService;

    iget-object v2, v2, Lcom/umeng/message/UmengDownloadResourceService;->b:Landroid/content/Context;

    const-class v3, Lcom/umeng/message/UmengDownloadResourceService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1219
    const-string v2, "body"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1220
    const-string v0, "id"

    iget-object v2, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->a:Lcom/umeng/message/a/a;

    iget-object v2, v2, Lcom/umeng/message/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1221
    const-string v0, "task_id"

    iget-object v2, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->a:Lcom/umeng/message/a/a;

    iget-object v2, v2, Lcom/umeng/message/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1222
    const-string v0, "OPERATIOIN"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1223
    const-string v0, "RETRY_TIME"

    iget v2, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->c:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1224
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-virtual {v0, v1}, Lcom/umeng/message/UmengDownloadResourceService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1225
    :cond_1
    :goto_0
    return-void

    .line 1226
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->d:Lcom/umeng/message/UmengDownloadResourceService;

    iget-object v0, v0, Lcom/umeng/message/UmengDownloadResourceService;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1227
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-virtual {v0}, Lcom/umeng/message/UmengDownloadResourceService;->stopSelf()V

    goto :goto_0
.end method
