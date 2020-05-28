import React, { Component } from 'react';
import Post from '../components/Post';
import { Switch, Route } from 'react-router-dom';
import Document from '../components/Document';

export default class Software extends Component {
    constructor(props) {
        super(props);
        this.state = {
            posts: [
                {
                    id: 1,
                    title: 'TIÊU ĐỀ 1',
                    thumbnail: require('../images/pexels-photo.jpg'),
                    link: 'post1',
                    upload_time: 'Thời gian',
                    comments: 'Bình luận'
                },
                {
                    id: 2,
                    title: 'TIÊU ĐỀ 2',
                    thumbnail: require('../images/pexels-photo.jpg'),
                    link: 'post2',
                    upload_time: 'Thời gian',
                    comments: 'Bình luận'
                },
                {
                    id: 3,
                    title: 'TIÊU ĐỀ 3',
                    thumbnail: require('../images/pexels-photo.jpg'),
                    link: 'post3',
                    upload_time: 'Thời gian',
                    comments: 'Bình luận'
                },
                {
                    id: 4,
                    title: 'TIÊU ĐỀ 4',
                    thumbnail: require('../images/pexels-photo.jpg'),
                    link: 'post4',
                    upload_time: 'Thời gian',
                    comments: 'Bình luận'
                },
                {
                    id: 5,
                    title: 'TIÊU ĐỀ 5',
                    thumbnail: require('../images/pexels-photo.jpg'),
                    link: 'post5',
                    upload_time: 'Thời gian',
                    comments: 'Bình luận'
                },
            ]
        }
    }


    render() {

        var match = this.props.match;
        var url = match.url;
        var posts = this.state.posts;
        let elmPosts = posts.map((post, index) => {
            return (
                <Post key={index} id={post.id} title={post.title} thumbnail={post.thumbnail} link={`${url}/${post.link}`} uploadTime={post.upload_time} comments={post.comments} />
            );
        });

        return (
            <Switch>
                <Route exact path='/software'>
                    <div className="col-sm-8">
                        <h1 style={{ margin: '10px', marginBottom: '20px', color: 'black' }}>TÀI LIỆU PHẦN MỀM</h1>

                        {elmPosts}

                        <div style={{ textAlign: 'center' }}>
                            <ul className="pagination">
                                <li><a href="# ">&laquo;</a></li>
                                <li className="active"><a href="# ">1</a></li>
                                <li><a href="# ">2</a></li>
                                <li><a href="# ">3</a></li>
                                <li><a href="# ">4</a></li>
                                <li><a href="# ">5</a></li>
                                <li><a href="# ">&raquo;</a></li>
                            </ul>
                        </div>

                    </div>
                </Route>
                <Route path='/software/:link' component={Document}/>
            </Switch>

        )
    }
}
