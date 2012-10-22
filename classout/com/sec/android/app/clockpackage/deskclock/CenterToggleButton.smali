.class public Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;
.super Landroid/widget/ToggleButton;
.source "CenterToggleButton.java"


# instance fields
.field private mButtonDrawableRef:Landroid/graphics/drawable/Drawable;

.field private mIsBack:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->mIsBack:Z

    .line 24
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .parameter "canvas"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->mButtonDrawableRef:Landroid/graphics/drawable/Drawable;

    .line 36
    .local v0, buttonDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_7e

    .line 37
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 38
    .local v4, width:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 39
    .local v2, height:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    sub-int v3, v7, v8

    .line 40
    .local v3, w:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    sub-int v1, v7, v8

    .line 42
    .local v1, h:I
    const-string v7, "GT-I9100"

    const-string v8, "GT-N7000"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7f

    const-string v7, "GT-I9100"

    const-string v8, "GT-I9221"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7f

    const-string v7, "GT-I9100"

    const-string v8, "GT-I9220"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7f

    const-string v7, "GT-I9100"

    const-string v8, "GT-I9228"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7f

    const-string v7, "GT-I9100"

    const-string v8, "GT-N7005"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7f

    .line 50
    const/16 v5, 0x16

    .line 52
    .local v5, x:I
    :goto_5e
    const/16 v6, 0x9

    .line 53
    .local v6, y:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v6

    add-int v9, v5, v4

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    add-int v10, v6, v2

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->getPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 55
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 57
    .end local v1           #h:I
    .end local v2           #height:I
    .end local v3           #w:I
    .end local v4           #width:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_7e
    return-void

    .line 48
    .restart local v1       #h:I
    .restart local v2       #height:I
    .restart local v3       #w:I
    .restart local v4       #width:I
    :cond_7f
    const/16 v5, 0x1c

    .restart local v5       #x:I
    goto :goto_5e
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "arg0"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 65
    .local v0, action:I
    const-string v1, "CenterToggleButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    packed-switch v0, :pswitch_data_3a

    .line 79
    :goto_22
    const/4 v1, 0x1

    return v1

    .line 69
    :pswitch_24
    const v1, 0x7f02004a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setButtonDrawable(I)V

    .line 70
    const-string v1, "CenterToggleButton"

    const-string v2, "actionDown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 74
    :pswitch_32
    const v1, 0x7f020086

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setButtonDrawable(I)V

    goto :goto_22

    .line 67
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_24
        :pswitch_32
    .end packed-switch
.end method

.method public setBack(Z)V
    .registers 4
    .parameter "bool"

    .prologue
    const v1, 0x7f020086

    const v0, 0x7f02004c

    .line 84
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->mIsBack:Z

    .line 86
    if-eqz p1, :cond_11

    .line 87
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setButtonDrawable(I)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setBackgroundResource(I)V

    .line 94
    :goto_10
    return-void

    .line 90
    :cond_11
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setButtonDrawable(I)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setBackgroundResource(I)V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_10
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "d"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->mButtonDrawableRef:Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    return-void
.end method
