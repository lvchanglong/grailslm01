/**
 * @license Copyright (c) 2003-2015, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
    config.language = 'zh-cn';

    config.font_names = '宋体;黑体;Times New Roman;方正姚体;幼圆;Arial';
    config.font_defaultLabel = '宋体';

    config.fontSize_sizes = '初号/56px;小初/48px;一号/34px;小一/32px;二号/29px;小二/24px;三号/21px;小三/20px;四号/18px;小四/16px;五号/14px;小五/12px;六号/10px;小六/8px';
    config.fontSize_defaultLabel = '14px';

    config.forcePasteAsPlainText = false; //'allow-word';

    config.toolbarGroups = [
        { name: 'document',    groups: [ 'mode', 'document', 'doctools' ] },
        { name: 'clipboard',   groups: [ 'clipboard', 'undo' ] },
        { name: 'editing',     groups: [ 'find', 'selection', 'spellchecker' ] },
        '/',
        { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
        { name: 'paragraph',   groups: [ 'list', 'indent', 'blocks', 'align' ] },
        { name: 'links' },
        { name: 'insert' },
        '/',
        { name: 'styles' },
        { name: 'colors' },
        { name: 'tools' },
        { name: 'others' }
    ];
};