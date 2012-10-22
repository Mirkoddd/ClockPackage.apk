.class public Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;
.super Landroid/widget/CheckBox;
.source "CenterCheckBox.java"


# instance fields
.field private mButtonDrawableRef:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;->mButtonDrawableRef:Landroid/graphics/drawable/Drawable;

    .line 37
    .local v0, buttonDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_24

    .line 39
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 41
    .local v2, width:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 43
    .local v1, height:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    div-int/lit8 v3, v5, 0x2

    .line 45
    .local v3, x:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/lit8 v4, v5, 0x2

    .line 47
    .local v4, y:I
    add-int v5, v3, v2

    add-int v6, v4, v1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 49
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 53
    .end local v1           #height:I
    .end local v2           #width:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_24
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "d"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/CenterCheckBox;->mButtonDrawableRef:Landroid/graphics/drawable/Drawable;

    .line 28
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    return-void
.end method
